import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/presentation/pages/route_error_screen.dart';
import 'package:magic_rewards/core/presentation/routes/app_route_paths.dart';
import 'package:magic_rewards/core/presentation/routes/locale_aware_router.dart';
import 'package:magic_rewards/core/presentation/routes/navigation_guards.dart';
import 'package:magic_rewards/core/presentation/routes/route_validation.dart';
import 'package:magic_rewards/core/presentation/routes/router_listenable.dart';
import 'package:magic_rewards/features/auth/presentation/pages/login_screen.dart';
import 'package:magic_rewards/features/auth/presentation/pages/register_screen.dart';
import 'package:magic_rewards/features/home/presentation/pages/main_screen.dart';
import 'package:magic_rewards/features/home/presentation/pages/splash_screen.dart';
import 'package:magic_rewards/features/live_offers/presentation/pages/live_offers_screen.dart';
import 'package:magic_rewards/features/profile/presentation/pages/contact_us_screen.dart';
import 'package:magic_rewards/features/profile/presentation/pages/profile_screen.dart';
import 'package:magic_rewards/features/profile/presentation/pages/terms_screen.dart';
import 'package:magic_rewards/features/rewards/presentation/pages/redeem_screen.dart';
import 'package:magic_rewards/features/rewards/presentation/pages/transactions_screen.dart';
import 'package:magic_rewards/features/tasks/presentation/pages/do_task_screen.dart';
import 'package:magic_rewards/features/tasks/presentation/pages/task_details_screen.dart';
import 'package:magic_rewards/features/tasks/presentation/pages/tasks_screen.dart';
import 'package:magic_rewards/features/top_users/presentation/pages/top_users_screen.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';

/// Simplified router configuration following clean architecture
/// This class provides a clean separation of concerns with guards handling
/// authentication logic and simplified route definitions
class RouteConfiguration {
  const RouteConfiguration._();

  /// Creates the main GoRouter configuration
  static GoRouter createRouter(Ref ref) {
    final router = GoRouter(
      initialLocation: AppRoutePaths.splash,
      observers: [ref.read(localizationRouterObserverProvider)],
      refreshListenable: RouterRefreshListenable(ref),
      redirect: (context, state) =>
          NavigationGuards.handleRedirect(context, state, ref),
      routes: _buildRoutes(),
      errorBuilder: (context, state) => RouteErrorScreen(
        error: state.error,
        routeLocation: state.uri.toString(),
      ),
      debugLogDiagnostics: true, // Enable in debug mode
    );
    
    LoggerService.app('🔧 Router configuration created');
    return router;
  }

  /// Builds all application routes with simplified parameter handling
  static List<RouteBase> _buildRoutes() {
    return [
      // Auth Routes
      GoRoute(
        path: AppRoutePaths.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.login,
        name: 'login',
        builder: (context, state) {
          // Query parameters can be accessed by screens internally if needed
          return const LogInScreen();
        },
      ),
      GoRoute(
        path: AppRoutePaths.register,
        name: 'register',
        builder: (context, state) {
          // Query parameters can be accessed by screens internally if needed
          return const RegisterScreen();
        },
      ),

      // Main App Routes
      GoRoute(
        path: AppRoutePaths.main,
        name: 'main',
        builder: (context, state) => const MainScreen(),
      ),

      // Profile Routes
      GoRoute(
        path: AppRoutePaths.profile,
        name: 'profile',
        builder: (context, state) {
          // Query parameters can be accessed by screens internally if needed
          return ProfileScreen();
        },
      ),
      GoRoute(
        path: AppRoutePaths.contactUs,
        name: 'contact-us',
        builder: (context, state) => const ContactUsScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.terms,
        name: 'terms',
        builder: (context, state) => const TermsScreen(),
      ),

      // Rewards Routes
      GoRoute(
        path: AppRoutePaths.redeem,
        name: 'redeem',
        builder: (context, state) => const RedeemScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.transactions,
        name: 'transactions',
        builder: (context, state) => TransactionsScreen(),
      ),

      // Tasks Routes
      GoRoute(
        path: AppRoutePaths.tasks,
        name: 'tasks',
        builder: (context, state) => const TasksScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.taskDetails,
        name: 'task-details',
        builder: (context, state) {
          final task = RouteValidation.validateExtra<TaskEntity>(
            state.extra, 
            'task-details'
          );
          
          return task != null 
            ? TaskDetailsScreen(task: task)
            : const TasksScreen(); // Simple fallback
        },
      ),
      GoRoute(
        path: AppRoutePaths.doTask,
        name: 'do-task',
        builder: (context, state) {
          final extraMap = RouteValidation.validateMapExtra(
            state.extra,
            'do-task'
          );
          
          if (extraMap != null) {
            final comment = extraMap['comment'] as CommentEntity?;
            final taskUrl = extraMap['taskUrl'] as String?;
            
            if (comment != null && taskUrl != null) {
              return DoTaskScreen(comment: comment, taskUrl: taskUrl);
            }
          }
          
          return const TasksScreen(); // Simple fallback
        },
      ),

      // Live Offers Routes
      GoRoute(
        path: AppRoutePaths.liveOffers,
        name: 'live-offers',
        builder: (context, state) => const LiveOffersScreen(),
      ),

      // Top Users Routes
      GoRoute(
        path: AppRoutePaths.leaderboard,
        name: 'leaderboard',
        builder: (context, state) => const TopUsersScreen(),
      ),
    ];
  }
}

/// Type-safe navigation extensions
extension NavigationExtensions on BuildContext {
/// Navigate to splash screen
  void goToSplash() => go(AppRoutePaths.splash);
  /// Navigate to login screen
  void goToLogin() => go(AppRoutePaths.login);

  /// Navigate to register screen
  void goToRegister() => go(AppRoutePaths.register);

  /// Navigate to main screen
  void goToMain() => go(AppRoutePaths.main);

  /// Navigate to profile screen
  void goToProfile() => go(AppRoutePaths.profile);

  /// Navigate to contact us screen
  void goToContactUs() => go(AppRoutePaths.contactUs);

  /// Navigate to terms screen
  void goToTerms() => go(AppRoutePaths.terms);

  /// Navigate to redeem screen
  void goToRedeem() => go(AppRoutePaths.redeem);

  /// Navigate to transactions screen
  void goToTransactions() => go(AppRoutePaths.transactions);

  /// Navigate to tasks screen
  void goToTasks() => go(AppRoutePaths.tasks);
  void goToTaskDetails({required TaskEntity task}) => 
      push(AppRoutePaths.taskDetails, extra: task);

  void goToDoTask({required CommentEntity comment, required String taskUrl}) =>
      push(AppRoutePaths.doTask, extra: {
        'comment': comment,
        'taskUrl': taskUrl,
      });
  /// Navigate to live offers screen
  void goToLiveOffers() => go(AppRoutePaths.liveOffers);
 /// Navigate to leaderboard screen
  void goToLeaderboard() => go(AppRoutePaths.leaderboard);
}
