import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/presentation/routes/route_configuration.dart' as config;
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// The main router provider for the application
/// 
/// This provider creates a centralized, clean routing solution with:
/// - Simplified route definitions following clean architecture
/// - Authentication guards separated into NavigationGuards class
/// - Context-free NavigationService integration
/// - Proper error handling and logging
/// - Integration with Riverpod state management
final routerProvider = Provider<GoRouter>((ref) {
  LoggerService.app('🔧 Initializing GoRouter with clean architecture setup');
  
  try {
    final router = config.RouteConfiguration.createRouter(ref);
    LoggerService.app('✅ GoRouter successfully initialized with NavigationService');
    return router;
  } catch (error, stackTrace) {
    LoggerService.error(
      'Failed to initialize GoRouter:\n'
      'Error: $error\n'
      'This is a critical error that prevents navigation from working.',
      error,
      stackTrace,
    );
    rethrow;
  }
});

