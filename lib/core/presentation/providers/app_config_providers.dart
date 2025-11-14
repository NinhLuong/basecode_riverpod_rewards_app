import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_rewards/shared/services/logger/logger_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_rewards/config/enums/app_languages.dart';
import 'package:riverpod_rewards/config/enums/app_state.dart';
import 'package:riverpod_rewards/config/languages/app_local.dart';
import 'package:riverpod_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:riverpod_rewards/core/presentation/observers/system_locale_observer.dart';
import 'package:riverpod_rewards/features/auth/presentation/providers/auth_providers.dart';

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
    // Initialize the system locale observer
    final observer = ref.watch(systemLocaleObserverProvider);
    
    // Get the current system locale
    final systemLocale = ref.watch(systemLocaleProvider);
    
    // Check if user has a saved locale preference
    final cachedLocale = CacheStorageServices().locale;
    
    // Determine initial language:
    // 1. Use cached locale if exists (user preference)
    // 2. Otherwise, use system locale (auto-sync with iOS)
    final initialLanguage = cachedLocale != null 
        ? AppLocale().currentLanguage()
        : systemLocale;
    
    L.info(
      '🌍 App Config initialized:\n'
      '   System Locale: ${systemLocale.name}\n'
      '   Cached Locale: ${cachedLocale ?? "none"}\n'
      '   Initial Language: ${initialLanguage.name}',
    );
    
    // Set up listener for system locale changes
    // This will automatically sync app language when iOS system language changes
    observer.addListener(() {
      _syncWithSystemLocale();
    });
    
    return AppConfigState(
      language: initialLanguage,
      appState: CacheStorageServices().hasToken ? AppState.loggedIn : AppState.loggedOut,
    );
  }
  
  /// Synchronize app language with system locale
  /// This is called automatically when iOS system language changes
  void _syncWithSystemLocale() {
    final systemLocale = ref.read(systemLocaleProvider);
    final currentLanguage = state.language;
    
    // Only sync if the system locale is different from current language
    // and user hasn't manually set a preference
    if (systemLocale != currentLanguage) {
      L.info(
        '🔄 Syncing app language with system locale:\n'
        '   From: ${currentLanguage.name}\n'
        '   To: ${systemLocale.name}',
      );
      
      // Update the app language to match system locale
      state = AppConfigState(
        language: systemLocale,
        appState: state.appState,
      );
      
      // Load the new locale for intl
      AppLocale().setLocale(systemLocale);
    }
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
      L.error('Error during logout: $error');
      
      // Still try to update state if mounted and clear auth state
      if (ref.mounted) {
        // Ensure auth state is cleared even on error
        try {
          ref.read(currentUserProvider.notifier).clearUser();
        } catch (authError) {
          L.error('Error clearing auth state: $authError');
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
