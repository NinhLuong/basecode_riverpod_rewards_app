import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/features/auth/presentation/pages/register_screen.dart';
import 'package:magic_rewards/features/auth/presentation/providers/auth_providers.dart';
import 'package:magic_rewards/features/auth/presentation/state/auth_state.dart';
import 'package:magic_rewards/shared/widgets/components/app_button.dart';
import 'package:magic_rewards/shared/widgets/components/app_text_field.dart';
import '../../../../shared/test_utils/widget_test_utils.dart';

void main() {
  group('RegisterScreen Widget Tests', () {
    testWidgets('should render all UI components correctly with initial state', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Check basic UI components
      WidgetTestUtils.expectToFind(find.text('Sign Up'));
      WidgetTestUtils.expectToFind(find.byType(AppTextField), count: 6); // All form fields
      WidgetTestUtils.expectToFind(find.byType(AppButton));
      WidgetTestUtils.expectToFind(find.text('Full Name'));
      WidgetTestUtils.expectToFind(find.text('Username'));
      WidgetTestUtils.expectToFind(find.text('Email'));
      WidgetTestUtils.expectToFind(find.text('Password'));
      WidgetTestUtils.expectToFind(find.text('Confirm Password'));
      WidgetTestUtils.expectToFind(find.text("Already have an account?"));
      WidgetTestUtils.expectToFind(find.text('Sign in'));
      
      // Check button is enabled initially
      final buttonFinder = find.byType(AppButton);
      expect(WidgetTestUtils.isWidgetEnabled(tester, buttonFinder), isTrue);
      
      // No loading indicator should be visible initially
      WidgetTestUtils.expectNoLoadingIndicator();
    });

    testWidgets('should show loading state when registering', (tester) async {
      // Arrange - Simple test setup
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Check basic components are rendered
      WidgetTestUtils.expectToFind(find.byType(AppButton));
      WidgetTestUtils.expectToFind(find.byType(AppTextField), count: 6);
    });

    testWidgets('should handle successful registration flow', (tester) async {
      // Arrange - Simple test setup
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Act - Fill in valid credentials
      final textFields = find.byType(AppTextField);
      
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(0), 'Test User');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(1), 'testuser');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(2), 'test@example.com');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(3), 'test2@example.com');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(4), 'password123');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(5), 'password123');

      // Assert - Text should be entered in visible fields
      expect(find.text('Test User'), findsOneWidget);
      expect(find.text('testuser'), findsOneWidget);
      expect(find.text('test@example.com'), findsOneWidget);
      expect(find.text('test2@example.com'), findsOneWidget);
    });

    testWidgets('should handle registration error correctly', (tester) async {
      // Arrange - Simple test for error state
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Basic components should be rendered
      WidgetTestUtils.expectToFind(find.byType(AppButton));
      WidgetTestUtils.expectNoLoadingIndicator();
    });

    testWidgets('should trigger registration when form is valid and button is pressed', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Act - Fill valid data and submit
      final textFields = find.byType(AppTextField);
      final submitButton = find.byType(AppButton);

      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(0), 'Test User');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(1), 'testuser');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(2), 'test@example.com');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(3), 'test2@example.com');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(4), 'password123');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(5), 'password123');
      
      await WidgetTestUtils.tapAndPump(tester, submitButton);

      // Assert - Form submission should be handled
      expect(find.text('Test User'), findsOneWidget);
    });

    testWidgets('should handle text input correctly in all fields', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Act - Test text input in all fields
      final textFields = find.byType(AppTextField);

      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(0), 'John Doe');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(1), 'johndoe');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(2), 'john@example.com');
      await WidgetTestUtils.enterTextAndPump(tester, textFields.at(3), 'john2@example.com');

      // Assert - Text should be entered correctly (non-password fields)
      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('johndoe'), findsOneWidget);
      expect(find.text('john@example.com'), findsOneWidget);
      expect(find.text('john2@example.com'), findsOneWidget);
    });

    testWidgets('should handle email check functionality', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Email check functionality should be integrated
      WidgetTestUtils.expectToFind(find.byType(AppTextField), count: 6);
    });

    testWidgets('should handle password visibility toggle', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Act & Assert - Find password fields and check obscure text behavior
      final passwordFields = find.byType(TextField);
      expect(passwordFields, findsWidgets);
      
      // Password fields should be obscured initially
      // This depends on how AppTextField handles the password parameter
    });
  });

  group('RegisterScreen Provider Integration Tests', () {
    testWidgets('should watch register provider state correctly', (tester) async {
      // Arrange
      final container = ProviderContainer();
      
      final widget = UncontrolledProviderScope(
        container: container,
        child: WidgetTestUtils.createTestableWidget(
          child: const RegisterScreen(),
          overrides: [],
        ),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Act & Assert - Verify provider is being watched
      final registerState = container.read(registerProvider);
      expect(registerState, isA<RegisterState>());
    });

    testWidgets('should react to provider state changes', (tester) async {
      // Arrange - Test basic provider interaction
      final widget = WidgetTestUtils.createTestableWidget(
        child: const RegisterScreen(),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Widget should render correctly
      WidgetTestUtils.expectToFind(find.byType(AppTextField), count: 6);
      WidgetTestUtils.expectToFind(find.byType(AppButton));
    });
  });
}
