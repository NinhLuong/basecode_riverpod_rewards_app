import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/enums/app_languages.dart';
import 'package:magic_rewards/config/enums/app_state.dart';
import 'package:magic_rewards/config/languages/app_local.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/features/auth/presentation/providers/auth_providers.dart';

part 'app_config_providers.g.dart';
part 'app_config_providers.freezed.dart';

@freezed
abstract class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    required AppLanguages language,
    required AppState appState,
  }) = _AppConfigState;
}

// App config state notifier - NOT auto-dispose since it manages global app state
@Riverpod(keepAlive: true)
class AppConfigNotifier extends _$AppConfigNotifier {
  @override
  AppConfigState build() {
    return AppConfigState(
      language: AppLocale().currentLanguage(),
      appState: CacheStorageServices().hasToken ? AppState.loggedIn : AppState.loggedOut,
    );
  }

  Future<void> setLanguage(AppLanguages language) async {
    await AppLocale().setLocale(language);
    state = AppConfigState(
      language: AppLocale().currentLanguage(),
      appState: state.appState,
    );
  }

  void logIn() {
    state = AppConfigState(
      language: AppLocale().currentLanguage(),
      appState: AppState.loggedIn,
    );
  }

  Future<void> logOut() async {
    try {
      await CacheStorageServices().clearAll();
      
      // Check if the provider is still mounted after async operation
      if (!ref.mounted) return;
 
      ref.read(currentUserProvider.notifier).clearUser();
      
      state = AppConfigState(
        language: AppLocale().currentLanguage(),
        appState: AppState.loggedOut,
      );
    } catch (error) {
      // Log error but don't throw to avoid breaking the logout flow
      LoggerService.error('Error during logout: $error');
      
      // Still try to update state if mounted and clear auth state
      if (ref.mounted) {
        // Ensure auth state is cleared even on error
        try {
          ref.read(currentUserProvider.notifier).clearUser();
        } catch (authError) {
          LoggerService.error('Error clearing auth state: $authError');
        }
        
        state = AppConfigState(
          language: AppLocale().currentLanguage(),
          appState: AppState.loggedOut,
        );
      }
    }
  }
}

// Convenience providers - NOT auto-dispose since they manage global app state
@Riverpod(keepAlive: true)
AppLanguages currentLanguage(Ref ref) {
  final configState = ref.watch(appConfigProvider);
  return configState.language;
}

@Riverpod(keepAlive: true)
AppState currentAppState(Ref ref) {
  final configState = ref.watch(appConfigProvider);
  return configState.appState;
}

@Riverpod(keepAlive: true)
bool isUserLoggedIn(Ref ref) {
  final appState = ref.watch(currentAppStateProvider);
  return appState == AppState.loggedIn;
}
