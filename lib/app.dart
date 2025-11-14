import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod_rewards/config/themes/app_theme.dart';
import 'package:riverpod_rewards/core/presentation/providers/app_config_providers.dart';
import 'package:riverpod_rewards/core/presentation/routes/app_routes.dart';
import 'package:riverpod_rewards/generated/l10n.dart';
import 'package:riverpod_rewards/shared/constants/app_constants.dart';
import 'package:riverpod_rewards/shared/extensions/language_extensions/app_languages_extension.dart';
import 'package:riverpod_rewards/shared/widgets/network_aware_wrapper.dart';
import 'package:riverpod_rewards/shared/providers/network_providers.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Initialize network monitoring
    ref.watch(networkConnectivityProvider);
    
    // Watch the current language from the app config provider
    // This will automatically rebuild the app when language changes
    final currentLanguage = ref.watch(currentLanguageProvider);
    
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
          locale: currentLanguage.locale,
          title: AppConstants.applicationName,
          theme: AppTheme().lightTheme,
          darkTheme: AppTheme().lightTheme,
          routerConfig: router,
          builder: (context, child) {
            // Wrap the entire app with network awareness for immediate feedback
            return NetworkAwareWrapper(
              child: child ?? const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}