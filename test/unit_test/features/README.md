# Presentation Layer Unit Tests

This directory contains comprehensive unit tests for the presentation layer of the application, specifically focused on testing UI components that use Riverpod for state management.

## Overview

After refactoring the codebase to use `flutter_riverpod` for state management, this test suite ensures that UI components correctly respond to state changes managed by Riverpod providers.

## Test Structure

### Shared Test Utilities

Located in `shared/test_utils/`, these utilities provide common testing infrastructure:

- **`mock_providers.dart`**: Contains pre-configured provider overrides for different states
- **`widget_test_utils.dart`**: Helper functions for widget testing, localization setup, and common assertions

### Feature Tests

#### Auth Feature (`auth/presentation/`)

- **`screens/login/login_screen_test.dart`**: Comprehensive tests for login functionality
- **`screens/register/register_screen_test.dart`**: Comprehensive tests for registration functionality

#### Home Feature (`home/presentation/`)

- **`screens/home/home_screen_test.dart`**: Tests for home screen state management and UI
- **`widgets/offer_wall_card_test.dart`**: Tests for individual offer wall card component

## Test Coverage Areas

### 1. Widget Rendering
- ✅ Initial state rendering
- ✅ Loading state display
- ✅ Success state content
- ✅ Error state handling
- ✅ Empty state display

### 2. State-Driven UI Changes
- ✅ Provider state watching
- ✅ UI rebuilds on state changes
- ✅ Loading indicators
- ✅ Error message display
- ✅ Data display updates

### 3. User Interactions
- ✅ Button tap handling
- ✅ Form input validation
- ✅ Text field interactions
- ✅ Pull-to-refresh functionality
- ✅ Navigation triggers

### 4. Provider Integration
- ✅ Provider state reading
- ✅ Provider overrides for testing
- ✅ Mock provider implementations
- ✅ State change reactions

## Usage Examples

### Basic Widget Test
```dart
testWidgets('should render correctly with initial state', (tester) async {
  // Arrange
  final widget = WidgetTestUtils.createTestableWidget(
    child: const MyWidget(),
    overrides: MockProviders.getInitialOverrides(),
  );

  // Act
  await WidgetTestUtils.pumpAndSettle(tester, widget);

  // Assert
  WidgetTestUtils.expectToFind(find.text('Expected Text'));
});
```

### State Change Test
```dart
testWidgets('should react to provider state changes', (tester) async {
  // Arrange
  final container = ProviderContainer(
    overrides: MockProviders.getInitialOverrides(),
  );
  
  final widget = UncontrolledProviderScope(
    container: container,
    child: WidgetTestUtils.createTestableWidget(child: MyWidget()),
  );

  await WidgetTestUtils.pumpAndSettle(tester, widget);

  // Act - Change state
  container.updateOverrides(MockProviders.getLoadingOverrides());
  await tester.pump();

  // Assert - Verify UI updated
  WidgetTestUtils.expectLoadingIndicator();
});
```

### Mock Provider Usage
```dart
testWidgets('should handle user interaction', (tester) async {
  // Arrange
  bool actionCalled = false;
  final mockNotifier = MockNotifier(() => actionCalled = true);
  
  final widget = WidgetTestUtils.createTestableWidget(
    child: MyWidget(),
    overrides: [
      myProvider.overrideWith(() => mockNotifier),
    ],
  );

  // Act
  await WidgetTestUtils.tapAndPump(tester, find.byType(ElevatedButton));

  // Assert
  expect(actionCalled, isTrue);
});
```

## Mock Providers

The `MockProviders` class provides pre-configured provider overrides for common scenarios:

### Auth Providers
- `getAuthLoginInitialOverrides()` - Initial login state
- `getAuthLoginLoadingOverrides()` - Loading state
- `getAuthLoginSuccessOverrides()` - Success state with mock user
- `getAuthLoginErrorOverrides()` - Error state with message
- `getAuthRegisterInitialOverrides()` - Initial registration state
- Similar patterns for register and email check states

### Home Providers
- `getHomeInitialOverrides()` - Initial home state
- `getHomeLoadingOverrides()` - Loading state
- `getHomeSuccessOverrides()` - Success state with mock data
- `getHomeErrorOverrides()` - Error state
- `getHomeRefreshingOverrides()` - Refreshing state

### Current User Providers
- `getCurrentUserUnauthenticatedOverrides()` - User not logged in
- `getCurrentUserAuthenticatedOverrides()` - User logged in
- `getCurrentUserLoadingOverrides()` - User state loading

## Best Practices Implemented

### 1. Arrange-Act-Assert Pattern
All tests follow the AAA pattern for clarity and consistency.

### 2. Descriptive Test Names
Test names clearly describe what is being tested and the expected outcome.

### 3. Mock Data
Realistic mock data ensures tests are representative of real-world scenarios.

### 4. Provider Isolation
Each test uses appropriate provider overrides to isolate the component under test.

### 5. Edge Case Testing
Tests cover edge cases like empty states, long text, special characters, and error conditions.

### 6. Accessibility Considerations
Tests include checks for accessibility features where applicable.

## Running Tests

### Run All Presentation Tests
```bash
flutter test test/unit_test/features/
```

### Run Specific Feature Tests
```bash
flutter test test/unit_test/features/auth/
flutter test test/unit_test/features/home/
```

### Run Specific Test File
```bash
flutter test test/unit_test/features/auth/presentation/screens/login/login_screen_test.dart
```

### Run with Coverage
```bash
flutter test --coverage test/unit_test/features/
```

## Future Enhancements

1. **Golden Tests**: Add visual regression tests for UI consistency
2. **Integration Tests**: Test complete user flows across multiple screens
3. **Performance Tests**: Measure widget rebuild performance
4. **Accessibility Tests**: Expand semantic and screen reader testing
5. **Animation Tests**: Test UI transitions and animations

## Dependencies

Key testing dependencies used:
- `flutter_test`: Core testing framework
- `flutter_riverpod`: State management testing utilities
- `mockito`: Mocking framework (if needed for complex scenarios)

## Contributing

When adding new presentation layer components:
1. Create corresponding test files following the established structure
2. Use the shared test utilities for consistency
3. Add appropriate mock provider overrides
4. Test all state transitions and user interactions
5. Include edge cases and error scenarios
6. Follow the naming conventions and documentation patterns
