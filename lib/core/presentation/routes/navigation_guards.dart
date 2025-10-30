import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/presentation/routes/app_route_paths.dart';
import 'package:magic_rewards/features/auth/presentation/providers/auth_providers.dart';
import 'package:magic_rewards/features/auth/presentation/state/auth_state.dart';
import 'package:magic_rewards/features/home/presentation/providers/splash_providers.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Handles all routing guards and redirection logic
/// 
/// This class centralizes authentication checks, route protection,
/// and other navigation guards to keep the router configuration clean
class NavigationGuards {
  const NavigationGuards._();

  /// Main redirect handler for the application
  /// 
  /// This method handles all routing logic including:
  /// - Authentication state checks
  /// - Route protection for authenticated/unauthenticated users
  /// - Loading state management
  /// - Deep link handling
  /// - Splash screen display timing
  static String? handleRedirect(BuildContext context, GoRouterState state, Ref ref) {
    final currentUserState = ref.read(currentUserProvider);
    final currentPath = state.uri.toString();
    final splashDisplayTime = ref.read(splashDisplayTimeProvider);

    _logNavigationAttempt(currentPath, currentUserState);

    // During splash screen display period, prevent any redirects
    if (currentPath == AppRoutePaths.splash && !splashDisplayTime.isComplete) {
      L.app('🚀 Splash screen displaying, blocking redirects');
      return null;
    }

    // Handle loading state - stay on splash screen
    if (currentUserState.isLoading && currentPath != AppRoutePaths.splash) {
      L.app('🔄 User state loading, redirecting to splash');
      return AppRoutePaths.splash;
    }

    // Don't redirect if already on splash and still loading
    if (currentPath == AppRoutePaths.splash && currentUserState.isLoading) {
      return null;
    }

    return _handleAuthenticationRedirects(currentPath, currentUserState);
  }

  /// Handles authentication-based redirects
  static String? _handleAuthenticationRedirects(String currentPath, CurrentUserState userState) {
    final isAuthenticated = userState.isAuthenticated;
    final isAuthRoute = AppRoutePaths.isAuthRoute(currentPath);
    final isProtectedRoute = AppRoutePaths.isProtectedRoute(currentPath);

    // Redirect unauthenticated users trying to access protected routes
    if (!isAuthenticated && isProtectedRoute) {
      L.app('🚫 BLOCKING: Unauthenticated user trying to access protected route, redirecting to login');
      return AppRoutePaths.login;
    }

    // Redirect authenticated users from auth routes to main
    if (isAuthenticated && isAuthRoute) {
      L.app('✅ Authenticated user on auth route, redirecting to main');
      return AppRoutePaths.main;
    }

    // Redirect authenticated users from splash to main
    if (isAuthenticated && currentPath == AppRoutePaths.splash) {
      L.app('🚫 BLOCKING: Authenticated user on splash, redirecting to main');
      return AppRoutePaths.main;
    }

    // Redirect unauthenticated users from splash to login
    if (!isAuthenticated && 
        !userState.isLoading && 
        currentPath == AppRoutePaths.splash) {
      L.app('🚫 BLOCKING: Unauthenticated user on splash, redirecting to login');
      return AppRoutePaths.login;
    }

    // No redirect needed
    L.app('✅ ALLOWING: Navigation permitted, no redirect needed');
    return null;
  }

  /// Validates if a user can access a specific route
  /// 
  /// This can be extended for role-based access control
  static bool canAccessRoute(String path, CurrentUserState userState) {
    final isAuthenticated = userState.isAuthenticated;
    final isProtectedRoute = AppRoutePaths.isProtectedRoute(path);
    
    return !isProtectedRoute || isAuthenticated;
  }

  /// Checks if the current route requires authentication
  static bool requiresAuthentication(String path) {
    return AppRoutePaths.isProtectedRoute(path);
  }

  /// Handles deep link validation and preprocessing
  /// 
  /// Can be extended to validate deep link parameters,
  /// handle expired links, or perform additional checks
  static String? handleDeepLink(String path, Map<String, String> queryParams) {
    L.app('🔗 Processing deep link: $path with params: $queryParams');
    
    // Add any deep link validation logic here
    // For example: validate invite codes, check link expiration, etc.
    
    return null; // No redirect needed for deep links by default
  }

  /// Logs navigation attempts for debugging
  static void _logNavigationAttempt(String currentPath, CurrentUserState userState) {
    L.app(
      'Navigation Redirect Check:\n'
      '📍 Current Path: $currentPath\n'
      '🔐 Auth State: ${userState.runtimeType}\n'
      '👤 Is Authenticated: ${userState.isAuthenticated}\n'
    );
  }

  /// Handles route-specific guards
  /// 
  /// This method can be used for route-specific validation logic
  /// Example: checking if user has completed onboarding, has required permissions, etc.
  static String? routeSpecificGuard(String path, Ref ref) {
    switch (path) {
      // Example: Onboarding guard
      // case AppRoutePaths.main:
      //   final hasCompletedOnboarding = ref.read(onboardingProvider).hasCompleted;
      //   if (!hasCompletedOnboarding) {
      //     return AppRoutePaths.onboarding;
      //   }
      //   break;
      
      // Example: Profile completion guard
      // case AppRoutePaths.tasks:
      //   final user = ref.read(currentUserProvider).user;
      //   if (user != null && !user.hasCompletedProfile) {
      //     return AppRoutePaths.completeProfile;
      //   }
      //   break;

      default:
        break;
    }
    
    return null;
  }
}