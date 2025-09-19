/// Mock data and provider utilities for testing
/// This file contains mock entities and basic test data
/// For complex provider testing, use direct ProviderContainer setup in individual tests

import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/entities/home_with_user_entity.dart';

/// Mock data utilities for testing
class MockProviders {
  // Mock user data
  static const mockUser = UserEntity(
    accessToken: 'mock_token_123',
    accountId: 'account_123',
    userName: 'testuser',
    email: 'test@example.com',
    fullName: 'Test User',
    points: '1500',
    redeemedPoints: '500',
  );

  // Mock home entities
  static const mockOfferWalls = [
    OfferWallEntity(
      id: '1',
      title: 'Offer Wall 1',
      subtitle: 'Subtitle 1',
      url: 'https://example.com/1',
      type: 'survey',
      thumbnail: 'https://example.com/thumb1.jpg',
      position: '1',
      status: 'active',
    ),
    OfferWallEntity(
      id: '2',
      title: 'Offer Wall 2',
      subtitle: 'Subtitle 2',
      url: 'https://example.com/2',
      type: 'game',
      thumbnail: 'https://example.com/thumb2.jpg',
      position: '2',
      status: 'active',
    ),
  ];

  static const mockHomeEntity = HomeEntity(
    balance: '2000.50',
    offerWalls: mockOfferWalls,
  );

  static const mockHomeWithUser = HomeWithUserEntity(
    homeData: mockHomeEntity,
    userData: mockUser,
  );

  static const mockCheckEmailEntity = CheckEmailEntity(
    verifyCode: 'mock_verify_code_123',
  );

  // Helper methods for creating test variations
  static HomeWithUserEntity createHomeWithUserVariation({
    String? balance,
    List<OfferWallEntity>? offerWalls,
    UserEntity? user,
  }) {
    return HomeWithUserEntity(
      homeData: HomeEntity(
        balance: balance ?? mockHomeEntity.balance,
        offerWalls: offerWalls ?? mockHomeEntity.offerWalls,
      ),
      userData: user ?? mockUser,
    );
  }

  static UserEntity createUserVariation({
    String? userName,
    String? email,
    String? fullName,
    String? points,
    String? redeemedPoints,
  }) {
    return UserEntity(
      accessToken: mockUser.accessToken,
      accountId: mockUser.accountId,
      userName: userName ?? mockUser.userName,
      email: email ?? mockUser.email,
      fullName: fullName ?? mockUser.fullName,
      points: points ?? mockUser.points,
      redeemedPoints: redeemedPoints ?? mockUser.redeemedPoints,
    );
  }

  static OfferWallEntity createOfferWallVariation({
    String? id,
    String? title,
    String? subtitle,
    String? url,
    String? type,
    String? thumbnail,
    String? position,
    String? status,
  }) {
    return OfferWallEntity(
      id: id ?? '1',
      title: title ?? 'Test Offer Wall',
      subtitle: subtitle,
      url: url ?? 'https://example.com/test',
      type: type ?? 'survey',
      thumbnail: thumbnail,
      position: position ?? '1',
      status: status ?? 'active',
    );
  }
}