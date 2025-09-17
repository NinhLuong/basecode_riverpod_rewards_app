import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/shared/widgets/components/app_button.dart';
import 'package:magic_rewards/shared/widgets/components/custom_appbar.dart';
import 'package:magic_rewards/shared/widgets/components/show_toast.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:magic_rewards/features/tasks/presentation/providers/tasks_providers.dart';
import 'package:magic_rewards/features/tasks/presentation/state/tasks_state.dart';
import 'package:magic_rewards/features/tasks/presentation/routes/do_task_route.dart';

class TaskDetailsScreen extends ConsumerWidget {
  final TaskEntity task;

  const TaskDetailsScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to state changes
    ref.listen(reserveCommentProvider, (previous, next) {
      next.whenOrNull(
        success: (reserveComment) {
          context.push(DoTaskRoute.name, extra: {
            'comment': reserveComment.commentEntity,
            'taskUrl': task.url
          });
        },
        error: (errorMessage) {
          showToast(message: errorMessage);
        },
      );
    });

    return Scaffold(
      backgroundColor: AppColors.white1,
      appBar: CustomAppBar(
        titleText: S.of(context).taskDetails,
        withBack: true,
        height: kToolbarHeight + 40.w,
      ),
      floatingActionButton: Container(
        height: 90.w,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: AppButton(
          onPressed: () => _onPressed(ref),
          type: AppButtonType.solidYellow,
          text: "Do Task ( + ${task.price} Points)",
          loading: ref.watch(isReserveCommentLoadingProvider),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Text(task.title,
                style: context.f18600?.copyWith(color: AppColors.black2)),
            const SizedBox(height: 10),
            Text(task.subTitle,
                style: context.f14400?.copyWith(color: AppColors.grey2)),
            const SizedBox(height: 10),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.black2)),
              child: HtmlWidget(
                task.description,
                textStyle:
                    context.f14600?.copyWith(color: AppColors.black2),
              ),
            ),
            const SizedBox(height: 140),
          ],
        ),
      ),
    );
  }

  void _onPressed(WidgetRef ref) {
    ref.read(reserveCommentProvider.notifier).reserveComment(taskId: task.id);
  }
}
