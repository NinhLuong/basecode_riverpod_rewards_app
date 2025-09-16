import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/features/tasks/presentation/providers/tasks_providers.dart';
import 'package:magic_rewards/features/tasks/presentation/widgets/task_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TasksSection extends ConsumerWidget {
  TasksSection({super.key});

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksAsync = ref.watch(tasksProvider);

    return tasksAsync.when(
      loading: () => const LoadingComponent(),
      error: (error, stack) => Center(
        child: Text('Error: $error'),
      ),
      data: (tasksEntity) => SmartRefresher(
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
                      .toList(),
                  const SizedBox(height: 100),
                ],
        ),
      ),
    );
  }
}
