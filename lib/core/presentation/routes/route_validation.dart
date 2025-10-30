import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Helper class for route parameter validation
class RouteValidation {
  static T? validateExtra<T>(Object? extra, String routeName) {
    try {
      if (extra is T) return extra;
      L.error('Invalid parameter type for $routeName route');
      return null;
    } catch (e) {
      L.error('Error validating parameters for $routeName', e);
      return null;
    }
  }

  static Map<String, dynamic>? validateMapExtra(Object? extra, String routeName) {
    return validateExtra<Map<String, dynamic>>(extra, routeName);
  }
}