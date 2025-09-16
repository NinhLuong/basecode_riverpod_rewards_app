import 'package:go_router/go_router.dart';
import '../pages/register_screen.dart';

class RegisterRoute {
  static const String name = '/register';

  static GoRoute route = GoRoute(
    path: name,
    builder: (context, state) => const RegisterScreen(),
  );
}
