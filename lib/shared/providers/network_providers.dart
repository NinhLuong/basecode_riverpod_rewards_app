import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/shared/services/network/network_connectivity_service.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Provider for NetworkConnectivityService instance
final networkConnectivityServiceProvider = Provider<NetworkConnectivityService>((ref) {
  final service = NetworkConnectivityService.instance;
  
  // Ensure cleanup on disposal
  ref.onDispose(() {
    service.dispose();
  });
  
  return service;
});

/// Provider that tracks current network connectivity status
/// Returns true if connected, false if disconnected
final networkConnectivityProvider = StreamProvider<bool>((ref) {
  final service = ref.watch(networkConnectivityServiceProvider);
  
  LoggerService.info('NetworkConnectivityProvider: Starting network monitoring');
  
  // Initialize service if not already done
  service.initialize();
  
  return service.networkStatusStream;
});

/// Provider that gives immediate access to current network status
/// This is useful for widgets that need to check network status synchronously
final currentNetworkStatusProvider = Provider<bool>((ref) {
  final networkAsyncValue = ref.watch(networkConnectivityProvider);
  
  return networkAsyncValue.when(
    data: (isConnected) => isConnected,
    loading: () => true, // Assume connected while loading
    error: (_, __) => false, // Assume disconnected on error
  );
});

/// Provider that provides user-friendly network status messages
final networkStatusMessageProvider = Provider<String?>((ref) {
  final networkAsyncValue = ref.watch(networkConnectivityProvider);
  
  return networkAsyncValue.when(
    data: (isConnected) => isConnected ? null : 'No internet connection',
    loading: () => null,
    error: (_, __) => 'Network status unknown',
  );
});

/// Provider that tracks if the app should show network-related errors
final shouldShowNetworkErrorProvider = Provider<bool>((ref) {
  final isConnected = ref.watch(currentNetworkStatusProvider);
  return !isConnected;
});

/// Provider for manually refreshing network connectivity
final networkRefreshProvider = Provider<Future<void> Function()>((ref) {
  final service = ref.watch(networkConnectivityServiceProvider);
  
  return () async {
    LoggerService.info('Manual network connectivity refresh triggered');
    await service.refreshConnectivity();
  };
});

/// Debug provider to monitor network state changes
final networkDebugProvider = Provider<String>((ref) {
  final networkAsyncValue = ref.watch(networkConnectivityProvider);
  
  return networkAsyncValue.when(
    data: (isConnected) => 'Network: ${isConnected ? 'Connected' : 'Disconnected'}',
    loading: () => 'Network: Checking...',
    error: (error, _) => 'Network: Error - $error',
  );
});
