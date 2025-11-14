import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_rewards/shared/providers/network_providers.dart';

/// A wrapper widget that monitors network connectivity and provides immediate feedback
/// when network connectivity is lost. This prevents infinite loading states and
/// provides better UX by showing errors immediately.
class NetworkAwareWrapper extends HookConsumerWidget {
  const NetworkAwareWrapper({
    super.key,
    required this.child,
    this.showOverlay = true,
    this.overlayColor,
  });

  final Widget child;
  final bool showOverlay;
  final Color? overlayColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch network connectivity status with detailed monitoring
    // final networkAsyncValue = ref.watch(networkConnectivityProvider);

    // Listen for network status changes and show immediate feedback
    ref.listen<AsyncValue<bool>>(networkConnectivityProvider, (previous, next) {
      next.whenData((isConnected) {
        if (!isConnected) {
          // Show error feedback when disconnected
          _showNetworkErrorFeedback(context);
        } else if (previous?.value == false && isConnected) {
          // Show reconnection feedback when restored
          _showNetworkRestoredFeedback(context);
        }
      });
    });

    return child;

    // Stack(
    //   children: [
    //     child,
    //     // Show overlay based on actual network state, not cached state
    //     if (networkAsyncValue.whenOrNull(data: (isConnected) => !isConnected) == true && showOverlay)
    //       _buildNetworkErrorOverlay(context),
    //   ],
    // );
  }

  /// Build network error overlay that appears immediately when network is lost
  // Widget _buildNetworkErrorOverlay(BuildContext context) {
  //   return Positioned.fill(
  //     child: Container(
  //       color: overlayColor ?? Colors.black.withValues(alpha: 0.7),
  //       child: Center(
  //         child: Card(
  //           margin: EdgeInsets.all(24),
  //           child: Padding(
  //             padding: EdgeInsets.all(24),
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 Icon(
  //                   Icons.wifi_off,
  //                   size: 64,
  //                   color: Colors.red.shade600,
  //                 ),
  //                 SizedBox(height: 16),
  //                 Text(
  //                   'No Internet Connection',
  //                   style: TextStyle(
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.bold,
  //                     color: Colors.red.shade600,
  //                   ),
  //                   textAlign: TextAlign.center,
  //                 ),
  //                 SizedBox(height: 8),
  //                 Text(
  //                   'Please check your network settings and try again.',
  //                   style: TextStyle(
  //                     fontSize: 16,
  //                     color: Colors.grey.shade700,
  //                   ),
  //                   textAlign: TextAlign.center,
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  /// Show immediate network error feedback via SnackBar
  void _showNetworkErrorFeedback(BuildContext context) {
    if (!context.mounted) return;

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.wifi_off, color: Colors.white, size: 20),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                'No internet connection. Please check your network settings.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.red.shade600,
        duration: Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  /// Show network restored feedback via SnackBar
  void _showNetworkRestoredFeedback(BuildContext context) {
    if (!context.mounted) return;

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.wifi, color: Colors.white, size: 20),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                'Internet connection restored.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green.shade600,
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

/// Extension to easily wrap any widget with network awareness
extension NetworkAware on Widget {
  Widget networkAware({bool showOverlay = true, Color? overlayColor}) {
    return NetworkAwareWrapper(
      showOverlay: showOverlay,
      overlayColor: overlayColor,
      child: this,
    );
  }
}
