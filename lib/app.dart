import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/config/languages/app_local.dart';
import 'package:magic_rewards/config/themes/app_theme.dart';
import 'package:magic_rewards/core/presentation/routes/app_routes.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/shared/extensions/language_extensions/app_languages_extension.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
 
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (_, child) {
        // Watch the router provider to get the configured GoRouter instance
        final router = ref.watch(routerProvider);
      
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: AppLocale().currentLanguage().locale,
          title: AppConstants.applicationName,
          theme: AppTheme().lightTheme,
          darkTheme: AppTheme().lightTheme,
          routerConfig: router,
          builder: (context, child) {
            return child ?? const SizedBox.shrink();
          },
        );
      },
    );
  }
}