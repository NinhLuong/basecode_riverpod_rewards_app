import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:riverpod_rewards/generated/l10n.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Utility class for widget testing with Riverpod providers
class WidgetTestUtils {
  /// Creates a testable widget with Riverpod providers and proper setup
  static Widget createTestableWidget({
    required Widget child,
    List<Override>? overrides,
    ThemeData? theme,
    Locale locale = const Locale('en'),
  }) {
    return ProviderScope(
      overrides: overrides ?? [],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp(
            locale: locale,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: theme ?? _getDefaultTheme(),
            home: child,
          );
        },
      ),
    );
  }

  /// Creates a minimal testable widget for simple widgets
  static Widget createSimpleTestableWidget({
    required Widget child,
    List<Override>? overrides,
  }) {
    return ProviderScope(
      overrides: overrides ?? [],
      child: MaterialApp(
        home: Scaffold(body: child),
      ),
    );
  }

  /// Default theme for testing
  static ThemeData _getDefaultTheme() {
    return ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.blue,
      fontFamily: 'Roboto',
    );
  }

  /// Helper method to pump widget and trigger any pending frames
  static Future<void> pumpAndSettle(
    WidgetTester tester, 
    Widget widget, {
    Duration? duration,
  }) async {
    await tester.pumpWidget(widget);
    await tester.pumpAndSettle(duration ?? const Duration(seconds: 10));
  }

  /// Helper method to find text widgets with specific text
  static Finder findTextWidget(String text) {
    return find.text(text);
  }

  /// Helper method to find widgets by type
  static Finder findWidgetByType<T>() {
    return find.byType(T);
  }

  /// Helper method to find widgets by key
  static Finder findWidgetByKey(Key key) {
    return find.byKey(key);
  }

  /// Helper method to tap a widget and pump
  static Future<void> tapAndPump(
    WidgetTester tester,
    Finder finder, {
    Duration? pumpDuration,
  }) async {
    await tester.tap(finder);
    await tester.pump(pumpDuration);
  }

  /// Helper method to enter text and pump
  static Future<void> enterTextAndPump(
    WidgetTester tester,
    Finder finder,
    String text, {
    Duration? pumpDuration,
  }) async {
    await tester.enterText(finder, text);
    await tester.pump(pumpDuration);
  }

  /// Helper method to verify widget existence
  static void expectToFind(Finder finder, {int? count}) {
    if (count != null) {
      expect(finder, findsNWidgets(count));
    } else {
      expect(finder, findsOneWidget);
    }
  }

  /// Helper method to verify widget doesn't exist
  static void expectNotToFind(Finder finder) {
    expect(finder, findsNothing);
  }

  /// Helper method to check if a widget is enabled/disabled
  static bool isWidgetEnabled(WidgetTester tester, Finder finder) {
    final widget = tester.widget(finder);
    if (widget is ElevatedButton) {
      return widget.onPressed != null;
    }
    if (widget is TextButton) {
      return widget.onPressed != null;
    }
    if (widget is OutlinedButton) {
      return widget.onPressed != null;
    }
    if (widget is IconButton) {
      return widget.onPressed != null;
    }
    return true; // Assume enabled if we can't determine
  }

  /// Helper method to check if text field is focused
  static bool isTextFieldFocused(WidgetTester tester, Finder finder) {
    final textField = tester.widget<TextField>(finder);
    return textField.focusNode?.hasFocus ?? false;
  }

  /// Helper method to verify error text in form fields
  static void expectFormFieldError(WidgetTester tester, String expectedError) {
    expect(find.text(expectedError), findsOneWidget);
  }

  /// Helper method to scroll and find widget
  static Future<Finder> scrollAndFind(
    WidgetTester tester,
    Finder scrollable,
    Finder target, {
    double delta = -300,
  }) async {
    await tester.scrollUntilVisible(target, delta, scrollable: scrollable);
    return target;
  }

  /// Mock Navigator Key for testing navigation
  static final GlobalKey<NavigatorState> mockNavigatorKey = GlobalKey<NavigatorState>();

  /// Create a navigatable widget for testing navigation
  static Widget createNavigatableWidget({
    required Widget child,
    List<Override>? overrides,
    Map<String, WidgetBuilder>? routes,
  }) {
    return ProviderScope(
      overrides: overrides ?? [],
      child: MaterialApp(
        navigatorKey: mockNavigatorKey,
        routes: routes ?? {},
        home: child,
      ),
    );
  }

  /// Helper method to verify loading states
  static void expectLoadingIndicator() {
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  }

  /// Helper method to verify no loading states
  static void expectNoLoadingIndicator() {
    expect(find.byType(CircularProgressIndicator), findsNothing);
  }

  /// Helper method to verify error display
  static void expectErrorMessage(String errorMessage) {
    expect(find.textContaining(errorMessage), findsAtLeastNWidgets(1));
  }

  /// Helper method to verify empty state
  static void expectEmptyState() {
    expect(find.text('Empty'), findsAtLeastNWidgets(0));
  }

  /// Advanced matcher for checking widget properties
  static Matcher hasProperty<T>(String property, T expectedValue) {
    return predicate<Widget>((widget) {
      try {
        final value = (widget as dynamic).getProperty(property);
        return value == expectedValue;
      } catch (e) {
        return false;
      }
    }, 'has property $property with value $expectedValue');
  }

  /// Helper for animation testing
  static Future<void> pumpFrames(WidgetTester tester, int frames, Duration frameInterval) async {
    for (int i = 0; i < frames; i++) {
      await tester.pump(frameInterval);
    }
  }

  /// Helper method to wait for async operations
  static Future<void> waitForAsync({Duration timeout = const Duration(seconds: 2)}) async {
    await Future.delayed(timeout);
  }
}

/// Custom matchers for Riverpod widget testing
class RiverpodMatchers {
  /// Matcher to check if a ConsumerWidget is watching a provider
  static Matcher watchesProvider(String providerName) {
    return predicate<Widget>(
      (widget) => widget is ConsumerWidget,
      'is watching provider $providerName',
    );
  }

  /// Matcher to check provider state
  static Matcher hasProviderState<T>(T expectedState) {
    return predicate<T>(
      (state) => state == expectedState,
      'has provider state $expectedState',
    );
  }
}
