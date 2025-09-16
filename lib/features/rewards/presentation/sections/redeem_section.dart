import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/features/rewards/presentation/providers/rewards_providers.dart';
import 'package:magic_rewards/features/rewards/presentation/widgets/balance_card.dart';
import 'package:magic_rewards/features/rewards/presentation/widgets/payout_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RedeemSection extends ConsumerWidget {
  RedeemSection({super.key});

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final payoutsAsync = ref.watch(payoutsProvider);

    return payoutsAsync.when(
      loading: () => const LoadingComponent(),
      error: (error, stack) => FailureComponent(failure: error as Failure),
      data: (payoutsEntity) => SmartRefresher(
        controller: refreshController,
        onRefresh: () async {
          await ref.read(payoutsProvider.notifier).refresh();
          refreshController.refreshCompleted();
        },
        child: ListView(
          children: payoutsEntity.payouts.isEmpty
              ? [const EmptyComponent()]
              : [
                  const SizedBox(height: 10),
                  BalanceCard(
                    balance: payoutsEntity.balance,
                    percent: payoutsEntity.redeemPercent,
                    minPayout: payoutsEntity.minPayout,
                  ),
                  const SizedBox(height: 10),
                  ...payoutsEntity.payouts
                      .map((e) => PayoutCard(payout: e))
                      .toList(),
                  const SizedBox(height: 100),
                ],
        ),
      ),
    );
  }
}
