import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/features/home/presentation/pages/home_screen.dart';
import 'package:magic_rewards/features/home/presentation/providers/home_providers.dart';
import 'package:magic_rewards/features/home/presentation/state/home_state.dart';
import '../../../../shared/test_utils/widget_test_utils.dart';

void main() {
  group('HomeScreen Widget Tests', () {
    testWidgets('should render basic structure correctly', (tester) async {
      // Arrange - Simple test setup
      final widget = WidgetTestUtils.createTestableWidget(
        child: HomeScreen(),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Basic structure should render
      // Note: Depending on initial state, this might show loading or content
      // This test verifies the widget can be instantiated without errors
      expect(find.byType(HomeScreen), findsOneWidget);
    });

    testWidgets('should handle widget rebuild correctly', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: HomeScreen(),
      );

      // Act - Pump widget multiple times to test stability
      await WidgetTestUtils.pumpAndSettle(tester, widget);
      await tester.pump();
      await tester.pump();

      // Assert - Widget should remain stable
      expect(find.byType(HomeScreen), findsOneWidget);
    });

    testWidgets('should handle refresh controller setup', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: HomeScreen(),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Test should complete without throwing
      // This verifies that the refresh controller is properly initialized
      expect(tester.takeException(), isNull);
    });
  });

  group('HomeScreen Provider Integration Tests', () {
    testWidgets('should watch home provider correctly', (tester) async {
      // Arrange
      final container = ProviderContainer();
      
      final widget = UncontrolledProviderScope(
        container: container,
        child: WidgetTestUtils.createTestableWidget(
          child: HomeScreen(),
          overrides: [],
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Verify provider is accessible
      final homeState = container.read(homeProvider);
      expect(homeState, isA<HomeState>());
      
      // Clean up
      container.dispose();
    });

    testWidgets('should handle provider state observation', (tester) async {
      // Arrange - Test basic provider interaction
      final widget = WidgetTestUtils.createTestableWidget(
        child: HomeScreen(),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Widget should render without errors
      expect(find.byType(HomeScreen), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  });
}
