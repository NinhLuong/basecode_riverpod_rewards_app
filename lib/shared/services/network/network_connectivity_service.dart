import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Service that monitors network connectivity status in real-time
/// Provides immediate feedback when network state changes
class NetworkConnectivityService {
  static NetworkConnectivityService? _instance;
  static NetworkConnectivityService get instance {
    _instance ??= NetworkConnectivityService._internal();
    return _instance!;
  }

  NetworkConnectivityService._internal();

  final Connectivity _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _subscription;
  
  /// Stream controller for network status changes
  final StreamController<bool> _networkStatusController = StreamController<bool>.broadcast();
  
  /// Current network status
  bool _isConnected = true;
  bool get isConnected => _isConnected;
  
  /// Stream of network connectivity status
  Stream<bool> get networkStatusStream => _networkStatusController.stream;

  /// Initialize network monitoring
  Future<void> initialize() async {
    try {
      // Check initial connectivity
      final initialResult = await _connectivity.checkConnectivity();
      _updateConnectionStatus(initialResult);
      
      // Listen for connectivity changes
      _subscription = _connectivity.onConnectivityChanged.listen(
        (List<ConnectivityResult> results) {
          L.network('Connectivity changed: $results');
          _updateConnectionStatus(results);
        },
        onError: (error) {
          L.error('Network connectivity stream error: $error');
          // Force reconnection check on error
          _forceConnectivityCheck();
        },
      );
      
      L.info('NetworkConnectivityService initialized');
    } catch (e) {
      L.error('Failed to initialize NetworkConnectivityService: $e');
      // Assume connected if we can't determine status
      _updateConnectionStatus([ConnectivityResult.wifi]);
    }
  }

  /// Update connection status based on connectivity result
  void _updateConnectionStatus(List<ConnectivityResult> results) {
    final wasConnected = _isConnected;
    _isConnected = _isConnectedFromResults(results);
    
    L.network('Connection status update: $results -> ${_isConnected ? 'Connected' : 'Disconnected'}');
    
    // Always emit status changes
    if (wasConnected != _isConnected) {
      _networkStatusController.add(_isConnected);
      L.network('Network status changed: ${_isConnected ? 'Connected' : 'Disconnected'}');
    }
  }

  /// Determine if connectivity results indicate connection
  bool _isConnectedFromResults(List<ConnectivityResult> results) {
    if (results.isEmpty) return false;
    
    // Consider connected if any result indicates connectivity (excluding 'none')
    return results.any((result) => _isConnectedResult(result));
  }

  /// Determine if connectivity result indicates connection
  bool _isConnectedResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.vpn:
        return true;
      case ConnectivityResult.bluetooth:
      case ConnectivityResult.other:
        // For bluetooth/other, assume connected
        return true;
      case ConnectivityResult.none:
        return false;
        
    }
  }

  /// Force connectivity check - useful for debugging and manual refresh
  Future<void> _forceConnectivityCheck() async {
    try {
      await Future.delayed(Duration(milliseconds: 500)); // Small delay
      final results = await _connectivity.checkConnectivity();
      L.network('Forced connectivity check result: $results');
      _updateConnectionStatus(results);
    } catch (e) {
      L.error('Failed to force connectivity check: $e');
    }
  }

  /// Check current connectivity status
  Future<bool> checkConnectivity() async {
    try {
      final results = await _connectivity.checkConnectivity();
      L.network('Manual connectivity check: $results');
      _updateConnectionStatus(results);
      return _isConnected;
    } catch (e) {
      L.error('Failed to check connectivity: $e');
      return false;
    }
  }

  /// Manual refresh of connectivity status - useful for retry scenarios
  Future<void> refreshConnectivity() async {
    L.info('Manually refreshing connectivity status...');
    await _forceConnectivityCheck();
  }

  /// Dispose resources
  void dispose() {
    _subscription?.cancel();
    _networkStatusController.close();
    L.info('NetworkConnectivityService disposed');
  }
}
