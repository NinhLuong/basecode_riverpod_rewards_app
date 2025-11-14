import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_rewards/features/home/presentation/providers/splash_providers.dart';
import 'package:riverpod_rewards/shared/constants/app_constants.dart';
import 'package:riverpod_rewards/shared/constants/app_duration.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_logo.dart';
import 'package:riverpod_rewards/shared/widgets/components/app_scaffold.dart';
import 'package:riverpod_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:riverpod_rewards/core/presentation/routes/route_configuration.dart';
import 'package:riverpod_rewards/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_rewards/features/auth/presentation/state/auth_state.dart';
import 'package:riverpod_rewards/shared/services/logger/logger_service.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay provider modifications until after widget tree is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeSplash();
    });
  }

  Future<void> _initializeSplash() async {
    if (!mounted) return;
    
    L.app('🚀 Splash screen initializing...');
    
    try {
      // Mark splash as started (now safe to modify provider)
      ref.read(splashDisplayTimeProvider.notifier).startSplash();
      
      // Wait for minimum display time
      await Future.delayed(AppDuration.splashDuration);
      
      if (!mounted) return;
      
      // Force load user data if needed
      await ref.read(currentUserProvider.notifier).forceLoadUserFromStorage();
      
      if (!mounted) return;
      
      // Mark splash as complete
      ref.read(splashDisplayTimeProvider.notifier).completeSplash();
      
      if (mounted) {
        await _navigateBasedOnAuthState();
      }
    } catch (error, stackTrace) {
      L.error(
        'Splash initialization failed: $error',
        error,
        stackTrace,
      );
      
      // Fallback navigation on error
      if (mounted) {
        context.goToLogin();
      }
    }
  }

  Future<void> _navigateBasedOnAuthState() async {
    final userState = ref.read(currentUserProvider);
    
    L.app(
      '🔄 Splash navigation decision:\n'
      '   Auth State: ${userState.runtimeType}\n'
      '   Is Authenticated: ${userState.isAuthenticated}'
    );
    
    if (userState.isAuthenticated) {
      context.goToMain();
    } else {
      context.goToLogin();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Listen for auth state changes to handle navigation
    ref.listen(currentUserProvider, (previous, next) {
      // Only navigate if splash is complete and state is not loading
      final splashState = ref.read(splashDisplayTimeProvider);
      if (splashState.isComplete && !next.isLoading && mounted) {
        // Use Future.microtask to avoid potential build conflicts
        Future.microtask(() => _navigateBasedOnAuthState());
      }
    });

    return AppScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppLogo(),
          SizedBox(height: 30.w),
          Text(AppConstants.applicationName.toUpperCase(),
              style: context.f20700),
          Text(AppConstants.applicationVersion, style: context.f16600),
          SizedBox(height: 20.w),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
