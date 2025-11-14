import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_button.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_container.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_logo.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_rich_text.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_scaffold.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_text_field.dart';
import 'package:riverpod_rewards/shared/widgets/components/show_toast.dart';
import 'package:riverpod_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:riverpod_rewards/config/utils/app_validator.dart';
import 'package:riverpod_rewards/generated/l10n.dart';
import 'package:riverpod_rewards/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_rewards/features/auth/presentation/state/auth_state.dart';
import 'package:riverpod_rewards/core/presentation/routes/route_configuration.dart';

class LogInScreen extends ConsumerStatefulWidget {
  const LogInScreen({super.key});

  @override
  ConsumerState<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends ConsumerState<LogInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _logInTapped() {
    if (_formKey.currentState?.validate() ?? false) {
      ref.read(loginProvider.notifier).login(
            username: _usernameController.text,
            password: _passwordController.text,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Listen to login state changes
    ref.listen(loginProvider, (previous, next) {
      next.whenOrNull(
        success: (user) {
          // Set the current user and navigate
          ref.read(currentUserProvider.notifier).setUser(user);
          showToast(message: S.of(context).loggedInSuccessfully);
          context.goToMain();
        },
        error: (failure) {
          showToast(message: failure.message);
        },
      );
    });

    return AppScaffold(
      body: ListView(
        children: [
          SizedBox(height: 120.h),
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
          Text(S.of(context).signIn, style: context.f16600),
          const SizedBox(height: 30),
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
          const SizedBox(height: 20),
          Consumer(
            builder: (context, ref, child) {
              final isLoading = ref.watch(isLoginLoadingProvider);
              
              return AppButton(
                text: S.of(context).signIn,
                loading: isLoading,
                type: AppButtonType.gradientBlue,
                onPressed: () => _logInTapped(),
              );
            },
          ),
          const SizedBox(height: 30),
          AppRichText(
              text: S.of(context).dontHaveAnAccount,
              buttonText: S.of(context).signUp,
              onTap: () {
                context.goToRegister();
              }),
        ],
      ),
    );
  }
}
