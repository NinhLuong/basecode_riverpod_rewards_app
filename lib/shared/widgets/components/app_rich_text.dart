import 'package:flutter/material.dart';
import 'package:riverpod_rewards/config/styles/app_colors.dart';
import 'package:riverpod_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';

class AppRichText extends StatelessWidget {
  final String text;
  final String buttonText;
  final VoidCallback onTap;

  const AppRichText({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          text,
          style: context.f12400?.copyWith(color: AppColors.lightGrey),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
              vertical: 2,
            ),
            child: Text(
              buttonText,
              style: context.f12700,
            ),
          ),
        ),
      ],
    );
  }
}
