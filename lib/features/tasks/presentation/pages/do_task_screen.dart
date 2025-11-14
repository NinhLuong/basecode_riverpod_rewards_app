import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_button.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_container.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_scaffold.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_text_field.dart';
import 'package:riverpod_rewards/shared/widgets/components/custom_appbar.dart';
import 'package:riverpod_rewards/shared/widgets/components/show_toast.dart';
import 'package:riverpod_rewards/shared/extensions/image_extensions/images_extension.dart';
import 'package:riverpod_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:riverpod_rewards/config/paths/images_paths.dart';
import 'package:riverpod_rewards/config/utils/app_validator.dart';
import 'package:riverpod_rewards/generated/l10n.dart';
import 'package:riverpod_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:riverpod_rewards/features/tasks/presentation/providers/tasks_providers.dart';
import 'package:riverpod_rewards/features/tasks/presentation/state/tasks_state.dart';

class DoTaskScreen extends HookConsumerWidget {
  final CommentEntity comment;
  final String taskUrl;

  const DoTaskScreen({super.key, required this.comment, required this.taskUrl});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final nameController = useTextEditingController();
    final urlController = useTextEditingController();
    final emailController = useTextEditingController();
    final dateController = useTextEditingController();
    final timeStamp = useState<DateTime?>(null);
    final picker = useMemoized(() => ImagePicker());
    final image = useState<XFile?>(null);
    
    // Listen to state changes
    ref.listen(addTaskOrderProvider, (previous, next) {
      next.whenOrNull(
        success: () {
          showToast(message: S.of(context).success);
          context.pop();
        },
        error: (failure) {
          showToast(message: failure.message);
        },
      );
    });

    return AppScaffold(
      appBar: CustomAppBar(
        titleText: S.of(context).doTask,
        withBack: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                _buildCommentBox(context),
                const SizedBox(height: 20),
                AppButton(
                    text: S.of(context).clickHereToCopyTheTaskUrl,
                    onPressed: () async {
                      await Clipboard.setData(
                          ClipboardData(text: taskUrl));
                      showToast(message: S.current.textCopiedToClipboard);
                    }),
                const SizedBox(height: 20),
                AppTextField(
                  controller: nameController,
                  labelText: S.of(context).name,
                  validator: AppValidator(validators: [
                    InputValidator.requiredField,
                  ]).validate,
                ),
                AppTextField(
                  controller: urlController,
                  labelText: S.of(context).url,
                  validator: AppValidator(validators: [
                    InputValidator.requiredField,
                    InputValidator.url
                  ]).validate,
                ),
                AppTextField(
                  controller: emailController,
                  labelText: S.of(context).email,
                  validator: AppValidator(validators: [
                    InputValidator.requiredField,
                    InputValidator.email
                  ]).validate,
                ),
                AppTextField(
                  controller: dateController,
                  labelText: S.of(context).date,
                  readOnly: true,
                  onTap: () async {
                    DateTime now = DateTime.now();
                    TimeOfDay? time = await showTimePicker(
                      context: context,
                      initialTime: const TimeOfDay(hour: 0, minute: 0),
                    );
                    if (time != null) {
                      timeStamp.value = DateTime(
                        now.year,
                        now.month,
                        now.day,
                        time.hour,
                        time.minute,
                      );
                      dateController.text = timeStamp.value!.toString();
                    }
                  },
                  validator: AppValidator(validators: [
                    InputValidator.requiredField,
                  ]).validate,
                ),
                _buildImagePicker(picker, image),
                const SizedBox(height: 20),
                AppButton(
                    onPressed: () => _onPressed(context, ref, formKey, nameController, urlController, emailController, timeStamp, image),
                    type: AppButtonType.solidYellow,
                    loading: ref.watch(isAddTaskOrderLoadingProvider),
                    text: S.of(context).confirm),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCommentBox(BuildContext context) {
    return AppContainer(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(comment.text, style: context.f16400),
          const SizedBox(height: 20),
          AppButton(
              onPressed: () async {
                await Clipboard.setData(
                    ClipboardData(text: comment.text));
                showToast(message: S.current.textCopiedToClipboard);
              },
              type: AppButtonType.transparentYellow,
              text: S.of(context).copyComment)
        ],
      ),
    );
  }

  void _onPressed(
    BuildContext context, 
    WidgetRef ref, 
    GlobalKey<FormState> formKey,
    TextEditingController nameController,
    TextEditingController urlController,
    TextEditingController emailController,
    ValueNotifier<DateTime?> timeStamp,
    ValueNotifier<XFile?> image,
  ) {
    if (formKey.currentState?.validate() ?? false) {
      if (timeStamp.value == null) {
        showToast(message: S.of(context).pleaseSetTheTimestamp);
        return;
      } else if (image.value == null) {
        showToast(message: S.of(context).pleasePickAnImage);
        return;
      }
      ref.read(addTaskOrderProvider.notifier).addTaskOrder(
            taskId: comment.taskId,
            commentId: comment.id,
            name: nameController.text,
            url: urlController.text,
            email: emailController.text,
            text: comment.text,
            image: image.value!.toFile,
            timeStamp: timeStamp.value!,
          );
    }
  }

  Widget _buildImagePicker(ImagePicker picker, ValueNotifier<XFile?> image) {
    return SizedBox(
      height: 250,
      child: AppContainer(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: ElevatedButton(
            onPressed: () async {
              image.value = await picker.pickImage(source: ImageSource.gallery);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              elevation: 0,
              padding: EdgeInsets.zero,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ValueListenableBuilder<XFile?>(
                valueListenable: image,
                builder: (BuildContext context, XFile? value, child) {
                  return image.value == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagesPaths.addImagePng, width: 250.w),
                            const SizedBox(height: 20),
                            Text("Choose Image to Upload",
                                style: context.f16700)
                          ],
                        )
                      : Image.file(image.value!.toFile);
                },
              ),
            ),
          )),
    );
  }
}
