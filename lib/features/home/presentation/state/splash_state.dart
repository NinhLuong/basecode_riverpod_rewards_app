/// State class for splash display timing
class SplashDisplayState {
  const SplashDisplayState({
    required this.startTime,
    required this.isComplete,
  });

  final DateTime? startTime;
  final bool isComplete;

  SplashDisplayState copyWith({
    DateTime? startTime,
    bool? isComplete,
  }) {
    return SplashDisplayState(
      startTime: startTime ?? this.startTime,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  /// Check if splash has been running for minimum duration
  bool get hasMinimumDisplayTime {
    if (startTime == null) return false;
    return DateTime.now().difference(startTime!).inMilliseconds >= 1500; // 1.5 seconds minimum
  }
}

