import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/config/styles/app_gradient.dart';
import 'package:magic_rewards/shared/widgets/components/app_button.dart';
import 'package:magic_rewards/shared/widgets/components/app_container.dart';
import 'package:magic_rewards/shared/widgets/components/app_network_image.dart';
import 'package:magic_rewards/shared/widgets/components/app_text_field.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/config/utils/app_validator.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/features/rewards/presentation/providers/rewards_providers.dart';
import 'package:magic_rewards/features/rewards/presentation/widgets/message_dialog.dart';

class PayoutCard extends ConsumerWidget {
  final PayoutEntity payout;

  const PayoutCard({super.key, required this.payout});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppContainer(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.zero,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            elevation: 0,
            padding: EdgeInsets.zero,
          ),
          onPressed: () => showRedeemDialog(context, ref),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                AppNetworkImage(
                  url: payout.thumbnail,
                  height: 50.w,
                  width: 50.w,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        payout.title,
                        style:
                            context.f16700?.copyWith(color: AppColors.white1),
                      ),
                      Text(
                        payout.subtitle,
                        style:
                            context.f10500?.copyWith(color: AppColors.white1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Future<void> showRedeemDialog(BuildContext context, WidgetRef ref) async {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController textController = TextEditingController();
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return buildRedeemDialog(context, ref, formKey, textController);
        });
  }

  Widget buildRedeemDialog(
      BuildContext context, WidgetRef ref, GlobalKey<FormState> formKey, TextEditingController textController) {
    return Consumer(
      builder: (context, ref, child) {
        final redeemAsync = ref.watch(redeemProvider);
        
        return redeemAsync.when(
          data: (success) {
            if (success == true) {
              return MessageDialog(
                message: S.of(context).yourRequestSuccess,
              );
            }
            // Initial state - show form
            return Dialog(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  gradient: AppGradients.dialogGradient,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(S.of(context).enterYourPayeerId, style: context.f20700),
                    const SizedBox(height: 20),
                    Form(
                      key: formKey,
                      child: AppTextField(
                        controller: textController,
                        fillColor: AppColors.blue.withOpacity(0.5),
                        hintStyle: context.f12400?.copyWith(color: AppColors.grey1),
                        style: context.f16600,
                        validator: AppValidator(validators: [
                          InputValidator.requiredField,
                        ]).validate,
                        hintText: S.of(context).payeerId,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: AppButton(
                              text: S.of(context).cancel,
                              onPressed: () {
                                context.pop();
                              }),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: AppButton(
                              text: S.of(context).confirm,
                              onPressed: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  ref.read(redeemProvider.notifier).redeem(
                                      name: payout.id,
                                      value: textController.text);
                                }
                              }),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          loading: () => Dialog(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                gradient: AppGradients.dialogGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
          error: (error, stackTrace) => MessageDialog(
            message: error.toString(),
            happy: false,
          ),
        );
      },
    );
  }
}
