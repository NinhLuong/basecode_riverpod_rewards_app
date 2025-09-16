import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/shared/widgets/components/app_scaffold.dart';
import 'package:magic_rewards/shared/widgets/components/custom_appbar.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/rewards/presentation/providers/rewards_providers.dart';
import 'package:magic_rewards/features/rewards/presentation/widgets/transaction_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TransactionsScreen extends ConsumerWidget {
  final RefreshController refreshController = RefreshController();

  TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsAsync = ref.watch(transactionsProvider);

    return AppScaffold(
      appBar: CustomAppBar(titleText: S.of(context).history, withBack: true),
      body: transactionsAsync.when(
        data: (transactions) => SmartRefresher(
          controller: refreshController,
          onRefresh: () => _refreshTransactions(ref),
          child: ListView(
            children: transactions.orders.isEmpty
                ? [const EmptyComponent()]
                : [
                    const SizedBox(height: 10),
                    ...transactions.orders
                        .map((e) => TransactionCard(transaction: e))
                        .toList(),
                    const SizedBox(height: 100),
                  ],
          ),
        ),
        loading: () => const LoadingComponent(),
        error: (error, stackTrace) => FailureComponent(failure: error as Failure),
      ),
    );
  }

  void _refreshTransactions(WidgetRef ref) {
    ref.read(transactionsProvider.notifier).refresh();
    refreshController.refreshCompleted();
  }
}
