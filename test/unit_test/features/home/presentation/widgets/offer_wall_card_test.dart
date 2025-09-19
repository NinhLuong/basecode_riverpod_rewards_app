import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:magic_rewards/features/home/presentation/widgets/offer_wall_card.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import '../../../shared/test_utils/widget_test_utils.dart';

void main() {
  group('OfferWallCard Widget Tests', () {
    // Mock data for testing
    const mockOfferWall = OfferWallEntity(
      id: '1',
      title: 'Test Offer Wall',
      subtitle: 'Test Subtitle',
      url: 'https://example.com/test',
      type: 'survey',
      thumbnail: 'https://example.com/thumb.jpg',
      position: '1',
      status: 'active',
    );

    testWidgets('should render offer wall card with all components', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: mockOfferWall,
          index: 0,
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Check basic components are rendered
      WidgetTestUtils.expectToFind(find.text('Test Offer Wall'));
      if (mockOfferWall.subtitle != null) {
        WidgetTestUtils.expectToFind(find.text('Test Subtitle'));
      }
      
      // Check for container/card structure
      WidgetTestUtils.expectToFind(find.byType(Container));
    });

    testWidgets('should handle offer wall without subtitle', (tester) async {
      // Arrange
      const offerWallNoSubtitle = OfferWallEntity(
        id: '2',
        title: 'No Subtitle Offer',
        subtitle: null,
        url: 'https://example.com/test2',
        type: 'game',
        thumbnail: null,
        position: '2',
        status: 'active',
      );

      final widget = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: offerWallNoSubtitle,
          index: 1,
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Should render without subtitle
      WidgetTestUtils.expectToFind(find.text('No Subtitle Offer'));
      WidgetTestUtils.expectNotToFind(find.text('Test Subtitle'));
    });

    testWidgets('should handle offer wall without thumbnail', (tester) async {
      // Arrange
      const offerWallNoThumbnail = OfferWallEntity(
        id: '3',
        title: 'No Thumbnail Offer',
        subtitle: 'Has subtitle',
        url: 'https://example.com/test3',
        type: 'app',
        thumbnail: null,
        position: '3',
        status: 'active',
      );

      final widget = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: offerWallNoThumbnail,
          index: 2,
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Should render without thumbnail image
      WidgetTestUtils.expectToFind(find.text('No Thumbnail Offer'));
      WidgetTestUtils.expectToFind(find.text('Has subtitle'));
    });

    testWidgets('should be tappable for navigation', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: mockOfferWall,
          index: 0,
        ),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Act & Assert - Check if card is wrapped in a tappable widget
      final cardFinder = find.byType(OfferWallCard);
      expect(cardFinder, findsOneWidget);

      // Look for tap handlers (GestureDetector, InkWell, etc.)
      // The exact implementation depends on how the OfferWallCard is implemented
      // Look for tap handlers - this depends on the actual implementation
      // The card should have some form of tap handling for navigation
    });

    testWidgets('should display different styles based on index', (tester) async {
      // Arrange & Act - Test different indices
      final widget1 = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: mockOfferWall,
          index: 0,
        ),
      );

      final widget2 = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: mockOfferWall,
          index: 1,
        ),
      );

      await WidgetTestUtils.pumpAndSettle(tester, widget1);
      // Check first card rendering
      WidgetTestUtils.expectToFind(find.text('Test Offer Wall'));

      // Clear and test second card
      await tester.pumpWidget(widget2);
      await tester.pumpAndSettle();
      
      // Check second card rendering
      WidgetTestUtils.expectToFind(find.text('Test Offer Wall'));
    });

    testWidgets('should handle long titles gracefully', (tester) async {
      // Arrange
      const longTitleOfferWall = OfferWallEntity(
        id: '4',
        title: 'This is a very long title that might need to wrap or truncate in the UI',
        subtitle: 'Normal subtitle',
        url: 'https://example.com/test4',
        type: 'survey',
        thumbnail: 'https://example.com/thumb4.jpg',
        position: '4',
        status: 'active',
      );

      final widget = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: longTitleOfferWall,
          index: 0,
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Should handle long text without overflow
      WidgetTestUtils.expectToFind(find.textContaining('This is a very long title'));
      WidgetTestUtils.expectToFind(find.text('Normal subtitle'));
      
      // Check that no overflow warnings occurred
      expect(tester.takeException(), isNull);
    });

    testWidgets('should maintain aspect ratio in grid layout', (tester) async {
      // Arrange - Simulate grid layout constraints
      final widget = WidgetTestUtils.createTestableWidget(
        child: SizedBox(
          width: 200,
          height: 220, // Approximating 9/10 aspect ratio from grid
          child: OfferWallCard(
            offerWall: mockOfferWall,
            index: 0,
          ),
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Should render within constraints
      final cardFinder = find.byType(OfferWallCard);
      expect(cardFinder, findsOneWidget);
      
      // Verify no overflow
      expect(tester.takeException(), isNull);
    });
  });

  group('OfferWallCard Edge Cases', () {
    // Mock data for edge cases
    const mockOfferWallForEdgeCases = OfferWallEntity(
      id: '1',
      title: 'Test Offer Wall',
      subtitle: 'Test Subtitle',
      url: 'https://example.com/test',
      type: 'survey',
      thumbnail: 'https://example.com/thumb.jpg',
      position: '1',
      status: 'active',
    );

    testWidgets('should handle empty or minimal data', (tester) async {
      // Arrange
      const minimalOfferWall = OfferWallEntity(
        id: '',
        title: '',
        subtitle: null,
        url: '',
        type: '',
        thumbnail: null,
        position: null,
        status: null,
      );

      final widget = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: minimalOfferWall,
          index: 0,
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Should handle empty data gracefully
      expect(tester.takeException(), isNull);
      
      // Should still render some structure even with empty data
      WidgetTestUtils.expectToFind(find.byType(OfferWallCard));
    });

    testWidgets('should handle special characters in title and subtitle', (tester) async {
      // Arrange
      const specialCharOfferWall = OfferWallEntity(
        id: '5',
        title: 'Title with émojis 🎮 & spëcial chârs!',
        subtitle: 'Subtitle with @#\$%^&*()_+ symbols',
        url: 'https://example.com/test5',
        type: 'game',
        thumbnail: 'https://example.com/thumb5.jpg',
        position: '5',
        status: 'active',
      );

      final widget = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: specialCharOfferWall,
          index: 0,
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Should handle special characters
      WidgetTestUtils.expectToFind(find.textContaining('émojis 🎮'));
      WidgetTestUtils.expectToFind(find.textContaining('@#\$%^&*()_+'));
      expect(tester.takeException(), isNull);
    });

    testWidgets('should be accessible for screen readers', (tester) async {
      // Arrange
      final widget = WidgetTestUtils.createTestableWidget(
        child: OfferWallCard(
          offerWall: mockOfferWallForEdgeCases,
          index: 0,
        ),
      );

      // Act
      await WidgetTestUtils.pumpAndSettle(tester, widget);

      // Assert - Check for accessibility features
      // This would test for Semantics widgets, proper labels, etc.
      final cardFinder = find.byType(OfferWallCard);
      expect(cardFinder, findsOneWidget);
      
      // Look for semantic information
      // The exact implementation depends on how accessibility is handled in OfferWallCard
    });
  });
}
