import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/enums/app_languages.dart';
import 'package:magic_rewards/config/enums/app_state.dart';
import 'package:magic_rewards/config/languages/app_local.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'app_config_providers.g.dart';
part 'app_config_providers.freezed.dart';

@freezed
abstract class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    required AppLanguages language,
    required AppState appState,
  }) = _AppConfigState;
}

// App config state notifier
@riverpod
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
    await CacheStorageServices().clearAll();
    state = AppConfigState(
      language: AppLocale().currentLanguage(),
      appState: AppState.loggedOut,
    );
  }
}

// Convenience providers
@riverpod
AppLanguages currentLanguage(Ref ref) {
  final configState = ref.watch(appConfigProvider);
  return configState.language;
}

@riverpod
AppState currentAppState(Ref ref) {
  final configState = ref.watch(appConfigProvider);
  return configState.appState;
}

@riverpod
bool isUserLoggedIn(Ref ref) {
  final appState = ref.watch(currentAppStateProvider);
  return appState == AppState.loggedIn;
}
