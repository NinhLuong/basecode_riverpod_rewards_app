import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/features/auth/presentation/providers/auth_providers.dart';
import 'package:magic_rewards/features/auth/presentation/state/auth_state.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Custom refresh listenable for GoRouter
/// This ensures the router rebuilds when authentication state changes
class RouterRefreshListenable extends ChangeNotifier {
  RouterRefreshListenable(this._ref) {
    // Listen to auth state changes
    _ref.listen<CurrentUserState>(
      currentUserProvider,
      (previous, next) {
        if (previous?.isAuthenticated != next.isAuthenticated) {
          L.app(
            '🔄 Auth state changed, notifying GoRouter:\n'
            '   Previous: ${previous?.runtimeType}\n'
            '   Current: ${next.runtimeType}\n'
            '   Is Authenticated: ${next.isAuthenticated}',
          );
          notifyListeners();
        }
      },
    );
  }

  final Ref _ref;

  @override
  void dispose() {
    // Cleanup is handled by Riverpod
    super.dispose();
  }
}
