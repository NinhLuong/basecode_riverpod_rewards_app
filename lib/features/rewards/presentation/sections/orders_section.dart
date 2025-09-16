import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/features/rewards/presentation/providers/rewards_providers.dart';
import 'package:magic_rewards/features/rewards/presentation/widgets/order_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class OrdersSection extends ConsumerWidget {
  OrdersSection({super.key});

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(ordersProvider);

    return ordersAsync.when(
      loading: () => const LoadingComponent(),
      error: (error, stack) => FailureComponent(failure: error as Failure),
      data: (ordersEntity) => SmartRefresher(
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
                      .toList(),
                  const SizedBox(height: 100),
                ],
        ),
      ),
    );
  }
}
