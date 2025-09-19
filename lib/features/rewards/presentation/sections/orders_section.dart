import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/features/rewards/presentation/providers/rewards_providers.dart';
import 'package:magic_rewards/features/rewards/presentation/state/rewards_state.dart';
import 'package:magic_rewards/features/rewards/presentation/widgets/order_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class OrdersSection extends ConsumerWidget {
  OrdersSection({super.key});

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersState = ref.watch(ordersProvider);

    return ordersState.when(
      initial: () => const LoadingComponent(),
      loading: () => const LoadingComponent(),
      error: (errorMessage) => FailureComponent(failure: Failure(errorMessage)),
      success: (ordersEntity) => SmartRefresher(
        controller: refreshController,
        onRefresh: () async {
          await ref.read(ordersProvider.notifier).refresh();
          refreshController.refreshCompleted();
        },
        child: ListView(
          children: ordersEntity.orders.isEmpty
              ? [const EmptyComponent()]
              : [
                  const SizedBox(height: 10),
                  ...ordersEntity.orders
                      .map((e) => OrderCard(order: e))
                      ,
                  const SizedBox(height: 100),
                ],
        ),
      ),
      refreshing: (currentData) => SmartRefresher(
        controller: refreshController,
        onRefresh: () async {
          await ref.read(ordersProvider.notifier).refresh();
          refreshController.refreshCompleted();
        },
        child: ListView(
          children: [
            const SizedBox(height: 10),
            if (currentData.orders.isEmpty)
              const EmptyComponent()
            else
              ...currentData.orders
                  .map((e) => OrderCard(order: e))
                  ,
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
