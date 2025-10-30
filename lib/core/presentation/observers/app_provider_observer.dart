import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// A comprehensive [ProviderObserver] for monitoring all Riverpod provider state changes
/// and lifecycle events throughout the application.
/// 
/// This observer provides detailed logging for debugging and monitoring purposes:
/// - **Create**: When providers are initialized
/// - **Update**: When provider values change
/// - **Dispose**: When providers are disposed
/// - **Fail**: When providers encounter errors
/// 
/// The logging levels are strategically chosen:
/// - **Info**: Important lifecycle events (create, dispose, errors)
/// - **Debug**: Detailed state transitions and updates
/// 
/// This helps maintain visibility into the application's state management behavior
/// while following Riverpod best practices.
final class AppProviderObserver extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderObserverContext context,
    Object? value,
  ) {
    L.info('🆕 Provider Created: ${context.provider.name ?? context.provider.runtimeType}');
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    final providerName = context.provider.name ?? context.provider.runtimeType;
    
    // Log all state changes at debug level
    L.debug(
      '🔄 Provider Updated: $providerName\n'
      '   From: ${previousValue?.runtimeType}\n'
      '   To: ${newValue?.runtimeType}'
    );
    
    // Log important state changes at info level for easier filtering
    if (_isImportantStateChange(previousValue, newValue)) {
      L.info('⚡ Important State Change: $providerName');
    }
  }

  @override
  void didDisposeProvider(
    ProviderObserverContext context,
  ) {
    L.info('🗑️ Provider Disposed: ${context.provider.name ?? context.provider.runtimeType}');
  }

  @override
  void providerDidFail(
    ProviderObserverContext context,
    Object error,
    StackTrace stackTrace,
  ) {
    L.error(
      '❌ Provider Error in ${context.provider.name ?? context.provider.runtimeType}: $error',
      error,
      stackTrace,
    );
  }

  /// Determines if a state change is important enough to log at info level.
  /// This helps filter out noise in the logs while highlighting significant changes.
  bool _isImportantStateChange(Object? previousValue, Object? newValue) {
    // Log transitions to/from loading states
    if (previousValue != null && newValue != null) {
      final prevType = previousValue.runtimeType.toString();
      final newType = newValue.runtimeType.toString();
      
      // Check for common important state transitions
      if (prevType.contains('Loading') || 
          newType.contains('Loading') ||
          prevType.contains('Error') || 
          newType.contains('Error') ||
          prevType.contains('Success') || 
          newType.contains('Success')) {
        return true;
      }
    }
    
    return false;
  }
}
