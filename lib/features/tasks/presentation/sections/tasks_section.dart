import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/features/tasks/presentation/providers/tasks_providers.dart';
import 'package:magic_rewards/features/tasks/presentation/state/tasks_state.dart';
import 'package:magic_rewards/features/tasks/presentation/widgets/task_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TasksSection extends ConsumerWidget {
  TasksSection({super.key});

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksState = ref.watch(tasksProvider);

    return tasksState.when(
      initial: () => const LoadingComponent(),
      loading: () => const LoadingComponent(),
      error: (failure) => FailureComponent(
        failure: failure,
        retry: () => ref.read(tasksProvider.notifier).refresh(),
      ),
      success: (tasksEntity) => SmartRefresher(
        controller: refreshController,
        onRefresh: () async {
          await ref.read(tasksProvider.notifier).refresh();
          refreshController.refreshCompleted();
        },
        child: ListView(
          children: tasksEntity.tasks.isEmpty
              ? [const EmptyComponent()]
              : [
                  const SizedBox(height: 10),
                  ...tasksEntity.tasks
                      .map((e) => TaskCard(task: e))
                      ,
                  const SizedBox(height: 100),
                ],
        ),
      ),
      refreshing: (currentData) => SmartRefresher(
        controller: refreshController,
        onRefresh: () async {
          await ref.read(tasksProvider.notifier).refresh();
          refreshController.refreshCompleted();
        },
        child: ListView(
          children: [
            const SizedBox(height: 10),
            if (currentData.tasks.isEmpty)
              const EmptyComponent()
            else
              ...currentData.tasks
                  .map((e) => TaskCard(task: e))
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
