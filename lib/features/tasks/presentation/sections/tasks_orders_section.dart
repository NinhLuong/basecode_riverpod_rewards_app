import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/features/tasks/presentation/providers/tasks_providers.dart';
import 'package:magic_rewards/features/tasks/presentation/widgets/task_order_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TasksOrdersSection extends ConsumerStatefulWidget {
  TasksOrdersSection({super.key});

  @override
  ConsumerState<TasksOrdersSection> createState() => _TasksOrdersSectionState();
}

class _TasksOrdersSectionState extends ConsumerState<TasksOrdersSection> {
  final RefreshController refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    // Trigger the fetch when the widget is first built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(taskOrdersProvider.notifier).fetchTaskOrders();
    });
  }

  @override
  Widget build(BuildContext context) {
    final taskOrdersAsync = ref.watch(taskOrdersProvider);

    return taskOrdersAsync.when(
      loading: () => const LoadingComponent(),
      error: (error, stack) => Center(
        child: Text('Error: $error'),
      ),
      data: (tasksOrdersEntity) {
        if (tasksOrdersEntity == null) {
          return const LoadingComponent();
        }
        return SmartRefresher(
          controller: refreshController,
          onRefresh: () async {
            await ref.read(taskOrdersProvider.notifier).fetchTaskOrders();
            refreshController.refreshCompleted();
          },
          child: ListView(
            children: tasksOrdersEntity.orders.isEmpty
                ? [const EmptyComponent()]
                : [
                    const SizedBox(height: 10),
                    ...tasksOrdersEntity.orders
                        .map((e) => TaskOrderCard(order: e))
                        .toList(),
                    const SizedBox(height: 100),
                  ],
          ),
        );
      },
    );
  }
}
