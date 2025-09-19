import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

class AppRichText extends StatefulWidget {
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
  State<AppRichText> createState() => _AppRichTextState();
}

class _AppRichTextState extends State<AppRichText> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = _handleTap;
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void _handleTap() {
    try {
      // Validate context before navigation
      if (!mounted) {
        LoggerService.warning('AppRichText: Widget not mounted, skipping navigation');
        return;
      }

      // Check if context is valid for navigation
      if (!context.mounted) {
        LoggerService.warning('AppRichText: Context not mounted, skipping navigation');
        return;
      }

      LoggerService.app('AppRichText: Initiating navigation from tap');
      
      // Execute the navigation callback
      widget.onTap();
    } catch (error, stackTrace) {
      LoggerService.error(
        'AppRichText navigation failed: $error',
        error,
        stackTrace,
      );
      
      // Attempt fallback navigation if original fails
      if (mounted && context.mounted) {
        _attemptFallbackNavigation();
      }
    }
  }

  void _attemptFallbackNavigation() {
    try {
      LoggerService.app('AppRichText: Attempting fallback navigation');
      
      // Use a post-frame callback to ensure navigation happens after current build
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && context.mounted) {
          widget.onTap();
        }
      });
    } catch (error, stackTrace) {
      LoggerService.error(
        'AppRichText fallback navigation failed: $error',
        error,
        stackTrace,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: widget.text,
        children: [
          TextSpan(
            text: "  ${widget.buttonText}",
            style: context.f12700,
            recognizer: _tapGestureRecognizer,
          ),
        ],
        style: context.f12400?.copyWith(color: AppColors.lightGrey),
      ),
    );
  }
}
