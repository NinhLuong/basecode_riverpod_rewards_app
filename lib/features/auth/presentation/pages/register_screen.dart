import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/config/styles/app_gradient.dart';
import 'package:magic_rewards/shared/widgets/components/app_button.dart';
import 'package:magic_rewards/shared/widgets/components/app_container.dart';
import 'package:magic_rewards/shared/widgets/components/app_logo.dart';
import 'package:magic_rewards/shared/widgets/components/app_rich_text.dart';
import 'package:magic_rewards/shared/widgets/components/app_scaffold.dart';
import 'package:magic_rewards/shared/widgets/components/app_text_field.dart';
import 'package:magic_rewards/shared/widgets/components/show_toast.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/config/utils/app_validator.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/auth/presentation/providers/auth_providers.dart';
import 'package:magic_rewards/features/auth/presentation/state/auth_state.dart';
import 'package:magic_rewards/core/presentation/routes/route_configuration.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _secondaryEmailController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String verifiedEmail = '';
  bool showNotificationsEmail = false;

  void _registerTapped() {
    if (_formKey.currentState?.validate() ?? true) {
      if (verifiedEmail != _secondaryEmailController.text && showNotificationsEmail) {
        ref.read(emailCheckProvider.notifier).checkEmail(_secondaryEmailController.text);
      } else {
        _register();
      }
    }
  }

  void _register() {
    ref.read(registerProvider.notifier).register(
          userName: _usernameController.text,
          email: _emailController.text,
          password: _passwordController.text,
          fullName: _fullNameController.text,
          secondaryEmail: _secondaryEmailController.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    // Listen to register state changes
    ref.listen(registerProvider, (previous, next) {
      next.whenOrNull(
        success: (user) {
          ref.read(currentUserProvider.notifier).setUser(user);
          showToast(message: S.of(context).signedUpScuccessfully);
          context.goToMain();
        },
        error: (failure) {
          showToast(message: failure.message);
        },
      );
    });

    // Listen to email check state changes
    ref.listen(emailCheckProvider, (previous, next) {
      next.whenOrNull(
        success: (checkEmailResult) {
          if (checkEmailResult.verifyCode != null) {
            _showVerifyEmailDialog(context, checkEmailResult.verifyCode!);
          } else {
            _register();
          }
        },
        error: (failure) {
          showToast(message: failure.message);
        },
      );
    });

    return AppScaffold(
      body: ListView(
        children: [
          SizedBox(height: 50.h),
          AppContainer(
            child: _buildForm(context),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }

  Form _buildForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppLogo(width: 50.w),
          const SizedBox(height: 10),
          Text(S.of(context).signUp, style: context.f16600),
          const SizedBox(height: 30),
          AppTextField(
            labelText: S.of(context).fullName,
            hintText: S.of(context).fullNameHint,
            controller: _fullNameController,
            validator: AppValidator(validators: [InputValidator.requiredField])
                .validate,
          ),
          AppTextField(
            labelText: S.of(context).username,
            hintText: S.of(context).usernameHint,
            controller: _usernameController,
            validator: AppValidator(validators: [
              InputValidator.requiredField,
              InputValidator.noSpaces
            ]).validate,
          ),
          AppTextField(
            labelText: S.of(context).email,
            hintText: S.of(context).emailHint,
            controller: _emailController,
            validator: AppValidator(validators: [
              InputValidator.requiredField,
              InputValidator.email
            ]).validate,
          ),
          AppTextField(
            labelText: S.of(context).password,
            hintText: S.of(context).passwordHint,
            controller: _passwordController,
            password: true,
            validator: AppValidator(minLength: 6, validators: [
              InputValidator.requiredField,
              InputValidator.noSpaces,
              InputValidator.minLength,
            ]).validate,
          ),
          AppTextField(
            labelText: S.of(context).confirmPassword,
            hintText: S.of(context).passwordHint,
            controller: _confirmPasswordController,
            password: true,
            validator: (text) {
              return text!.trim().isEmpty
                  ? S.current.requiredField
                  : text != _passwordController.text
                      ? S.of(context).thisFieldDoesntMatchTheNewPassword
                      : null;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Text(
                "Receive notifications via email?",
                style: context.f16400,
              )),
              Switch(
                  activeThumbColor: AppColors.blue,
                  inactiveThumbColor: AppColors.grey1,
                  value: showNotificationsEmail,
                  onChanged: (val) {
                    setState(() {
                      showNotificationsEmail = val;
                    });
                  }),
            ],
          ),
          if (showNotificationsEmail) const SizedBox(height: 10),
          if (showNotificationsEmail)
            AppTextField(
              labelText: S.of(context).notificationsEmail,
              hintText: S.of(context).emailHint,
              controller: _secondaryEmailController,
              validator:
                  AppValidator(validators: [InputValidator.email]).validate,
            ),
          const SizedBox(height: 20),
          Consumer(
            builder: (context, ref, child) {
              final isRegisterLoading = ref.watch(isRegisterLoadingProvider);
              final isEmailCheckLoading = ref.watch(isEmailCheckLoadingProvider);
              
              return AppButton(
                text: S.of(context).signUp,
                loading: isRegisterLoading || isEmailCheckLoading,
                type: AppButtonType.gradientBlue,
                onPressed: () => _registerTapped(),
              );
            },
          ),
          const SizedBox(height: 30),
          AppRichText(
            text: S.of(context).alreadyHaveAnAccount,
            buttonText: S.of(context).signIn,
            onTap: () {
              context.goToLogin();
            },
          ),
        ],
      ),
    );
  }

  void _showVerifyEmailDialog(BuildContext context, String verifyCode) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController textController = TextEditingController();
    showDialog(
        context: context,
        builder: (context) {
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
                  Text(
                      "Enter Verification code sent to: ${_secondaryEmailController.text}",
                      style: context.f20700),
                  const SizedBox(height: 20),
                  Form(
                    key: formKey,
                    child: AppTextField(
                      controller: textController,
                      fillColor: AppColors.blue.withOpacity(0.5),
                      hintStyle:
                          context.f12400?.copyWith(color: AppColors.grey1),
                      style: context.f16600,
                      maxLength: 6,
                      validator: AppValidator(minLength: 6, validators: [
                        InputValidator.requiredField,
                        InputValidator.minLength,
                      ]).validate,
                      hintText: S.of(context).code,
                    ),
                  ),
                  const SizedBox(height: 20),
                  AppButton(
                      text: S.of(context).verify,
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          if (textController.text == verifyCode) {
                            showToast(
                                message:
                                    S.of(context).emailVerifiedSuccessfully);
                            verifiedEmail = _secondaryEmailController.text;
                            Navigator.of(context).pop(true);
                          } else {
                            showToast(
                                message: S.of(context).wrongVerificationCode);
                          }
                        }
                      })
                ],
              ),
            ),
          );
        }).then((value) {
      if (value == true) {
        _register();
      }
    });
  }
}
