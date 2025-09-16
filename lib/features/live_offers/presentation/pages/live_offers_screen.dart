import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/features/live_offers/presentation/providers/live_offers_providers.dart';
import 'package:magic_rewards/features/live_offers/presentation/widgets/live_offer_component.dart';

class LiveOffersScreen extends ConsumerStatefulWidget {
  const LiveOffersScreen({super.key});

  @override
  ConsumerState<LiveOffersScreen> createState() => _LiveOffersScreenState();
}

class _LiveOffersScreenState extends ConsumerState<LiveOffersScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    // Initial fetch - no need to manually call as build() will automatically load data
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      final notifier = ref.read(liveOffersProvider.notifier);
      if (!ref.read(isLoadingLiveOffersProvider)) {
        notifier.loadMore();
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Offers'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref
                .read(liveOffersProvider.notifier)
                .refresh(),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final asyncValue = ref.watch(liveOffersProvider);
          final isLoading = ref.watch(isLoadingLiveOffersProvider);

          return asyncValue.when(
            loading: () => const _LoadingView(),
            error: (error, stack) => _ErrorView(
              message: error.toString(),
              onRetry: () => ref
                  .read(liveOffersProvider.notifier)
                  .refresh(),
            ),
            data: (data) => _SuccessView(
              offers: data.liveOffers,
              scrollController: _scrollController,
              isLoadingMore: isLoading,
            ),
          );
        },
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _SuccessView extends StatelessWidget {
  final List<dynamic> offers;
  final ScrollController scrollController;
  final bool isLoadingMore;

  const _SuccessView({
    required this.offers,
    required this.scrollController,
    this.isLoadingMore = false,
  });

  @override
  Widget build(BuildContext context) {
    if (offers.isEmpty) {
      return const _EmptyView();
    }

    return RefreshIndicator(
      onRefresh: () async {
        final container = ProviderScope.containerOf(context);
        await container
            .read(liveOffersProvider.notifier)
            .refresh();
      },
      child: ListView.builder(
        controller: scrollController,
        itemCount: offers.length + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index >= offers.length) {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          return LiveOfferComponent(
            liveOffer: offers[index],
            key: ValueKey(offers[index].hashCode),
          );
        },
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText.rich(
            TextSpan(
              text: 'Error: $message',
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No live offers available',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
