import 'package:magic_rewards/features/home/presentation/state/splash_state.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_providers.g.dart';

/// Provider to track splash screen display timing
@riverpod
class SplashDisplayTime extends _$SplashDisplayTime {
  @override
  SplashDisplayState build() {
    return const SplashDisplayState(
      startTime: null,
      isComplete: false,
    );
  }

  void startSplash() {
    state = SplashDisplayState(
      startTime: DateTime.now(),
      isComplete: false,
    );
    L.app('🚀 Splash display started');
  }

  void completeSplash() {
    state = state.copyWith(isComplete: true);
    L.app('✅ Splash display completed');
  }

  void reset() {
    state = const SplashDisplayState(
      startTime: null,
      isComplete: false,
    );
  }
}