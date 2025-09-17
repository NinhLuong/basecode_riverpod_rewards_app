import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/live_offers/domain/entities/live_offer_entity.dart';
import 'package:magic_rewards/features/live_offers/presentation/state/live_offers_state.dart';
import 'package:magic_rewards/shared/widgets/components/custom_appbar.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/live_offers/presentation/providers/live_offers_providers.dart';
import 'package:magic_rewards/features/live_offers/presentation/widgets/live_offer_component.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class LiveOffersScreen extends HookConsumerWidget {
  const LiveOffersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(liveOffersProvider);
    final notifier = ref.read(liveOffersProvider.notifier);
    final refreshController = RefreshController();

    // Handle refresh completion
    ref.listen<LiveOffersState>(liveOffersProvider, (previous, next) {
      next.whenOrNull(
        success: (_) {
          if (refreshController.isRefresh) {
            refreshController.refreshCompleted();
          }
          if (refreshController.isLoading) {
            refreshController.loadComplete();
          }
        },
        error: (_) {
          if (refreshController.isRefresh) {
            refreshController.refreshFailed();
          }
          if (refreshController.isLoading) {
            refreshController.loadFailed();
          }
        },
      );
    });

    return Scaffold(
      appBar: CustomAppBar(
        titleText: S.of(context).liveOffers,
      ),
      body: state.when(
        initial: () => const LoadingComponent(),
        loading: () => const LoadingComponent(),
        success: (data) => _buildSuccessContent(
          context,
          data,
          refreshController,
          notifier,
          ref,
        ),
        error: (message) => FailureComponent(
          failure: Failure(message),
          retry: () => notifier.refresh(),
        ),
        loadingMore: (currentData) => _buildSuccessContent(
          context,
          currentData,
          refreshController,
          notifier,
          ref,
          isLoadingMore: true,
        ),
      ),
    );
  }

  Widget _buildSuccessContent(
    BuildContext context,
    LiveOffersEntity data,
    RefreshController refreshController,
    LiveOffersNotifier notifier,
    WidgetRef ref, {
    bool isLoadingMore = false,
  }) {
    if (data.liveOffers.isEmpty) {
      return SmartRefresher(
        controller: refreshController,
        onRefresh: () async => notifier.refresh(),
        child: const SingleChildScrollView(
          child: EmptyComponent(),
        ),
      );
    }

    return SmartRefresher(
      controller: refreshController,
      onRefresh: () async => notifier.refresh(),
      onLoading: notifier.hasMore ? () async => notifier.loadMore() : null,
      enablePullUp: notifier.hasMore,
      footer: ClassicFooter(
        height: 200,
        loadingText: S.of(context).pullUpLoad,
        noDataText: S.of(context).noMoreData,
        failedText: S.of(context).loadFailed,
        idleText: S.of(context).pullUpLoad,
      ),
      child: ListView.builder(
        itemCount: data.liveOffers.length + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index >= data.liveOffers.length) {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          return LiveOfferComponent(
            liveOffer: data.liveOffers[index],
            key: ValueKey(data.liveOffers[index].id),
          );
        },
      ),
    );
  }
}
