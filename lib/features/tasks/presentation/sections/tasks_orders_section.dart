import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/features/tasks/presentation/providers/tasks_providers.dart';
import 'package:magic_rewards/features/tasks/presentation/state/tasks_state.dart';
import 'package:magic_rewards/features/tasks/presentation/widgets/task_order_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TasksOrdersSection extends ConsumerStatefulWidget {
  const TasksOrdersSection({super.key});

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
    final taskOrdersState = ref.watch(taskOrdersProvider);

    return taskOrdersState.when(
      initial: () => const LoadingComponent(),
      loading: () => const LoadingComponent(),
      error: (errorMessage) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: $errorMessage'),
            ElevatedButton(
              onPressed: () => ref.read(taskOrdersProvider.notifier).fetchTaskOrders(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
      success: (tasksOrdersEntity) {
        return SmartRefresher(
          controller: refreshController,
          onRefresh: () async {
            await ref.read(taskOrdersProvider.notifier).refresh();
            refreshController.refreshCompleted();
          },
          child: ListView(
            children: tasksOrdersEntity.orders.isEmpty
                ? [const EmptyComponent()]
                : [
                    const SizedBox(height: 10),
                    ...tasksOrdersEntity.orders
                        .map((e) => TaskOrderCard(order: e))
                        ,
                    const SizedBox(height: 100),
                  ],
          ),
        );
      },
      refreshing: (currentData) => SmartRefresher(
        controller: refreshController,
        onRefresh: () async {
          await ref.read(taskOrdersProvider.notifier).refresh();
          refreshController.refreshCompleted();
        },
        child: ListView(
          children: [
            const SizedBox(height: 10),
            if (currentData.orders.isEmpty)
              const EmptyComponent()
            else
              ...currentData.orders
                  .map((e) => TaskOrderCard(order: e))
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
