import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/enums/app_languages.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

part 'system_locale_observer.g.dart';

/// Observes system locale changes and notifies listeners
/// This class monitors the device's system locale and converts it to AppLanguages
class SystemLocaleObserver extends WidgetsBindingObserver {
  SystemLocaleObserver() {
    // Register this observer with WidgetsBinding
    WidgetsBinding.instance.addObserver(this);
    _currentLocale = _getSystemLocale();
    L.info('SystemLocaleObserver initialized with locale: ${_currentLocale.name}');
  }

  AppLanguages _currentLocale = AppLanguages.english;
  final List<VoidCallback> _listeners = [];

  /// Get the current system locale as AppLanguages
  AppLanguages get currentLocale => _currentLocale;

  /// Add a listener that will be called when the locale changes
  void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  /// Remove a listener
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  /// Notify all listeners of a locale change
  void _notifyListeners() {
    for (final listener in _listeners) {
      listener();
    }
  }

  @override
  void didChangeLocales(List<ui.Locale>? locales) {
    super.didChangeLocales(locales);
    
    L.info(
      '🌍 System locale changed:\n'
      '   Locales: ${locales?.map((l) => l.toString()).join(", ")}\n'
      '   Primary locale: ${locales?.first.languageCode}',
    );

    final newLocale = _getSystemLocale();
    if (newLocale != _currentLocale) {
      final oldLocale = _currentLocale;
      _currentLocale = newLocale;
      
      L.info(
        '🔄 App locale updated:\n'
        '   From: ${oldLocale.name}\n'
        '   To: ${_currentLocale.name}',
      );
      
      _notifyListeners();
    }
  }

  /// Get the system locale from PlatformDispatcher
  AppLanguages _getSystemLocale() {
    final locales = ui.PlatformDispatcher.instance.locales;
    
    if (locales.isEmpty) {
      L.warning('No system locales found, defaulting to English');
      return AppLanguages.english;
    }

    final primaryLocale = locales.first;
    final languageCode = primaryLocale.languageCode.toLowerCase();

    L.debug('Primary system locale language code: $languageCode');

    // Map language code to AppLanguages
    switch (languageCode) {
      case 'vi':
        return AppLanguages.vietnam;
      case 'en':
      default:
        return AppLanguages.english;
    }
  }

  /// Dispose method to clean up
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _listeners.clear();
    L.info('SystemLocaleObserver disposed');
  }
}

/// Provider for system locale observer
@Riverpod(keepAlive: true)
SystemLocaleObserver systemLocaleObserver(Ref ref) {
  final observer = SystemLocaleObserver();
  
  // Ensure cleanup when provider is disposed
  ref.onDispose(() {
    observer.dispose();
  });
  
  return observer;
}

/// Provider that exposes the current system locale as AppLanguages
@Riverpod(keepAlive: true)
AppLanguages systemLocale(Ref ref) {
  final observer = ref.watch(systemLocaleObserverProvider);
  
  // This provider will automatically rebuild when system locale changes
  // because we're watching the observer
  return observer.currentLocale;
}

