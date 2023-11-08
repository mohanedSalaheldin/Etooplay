import 'package:etooplay/src/features/Register/presentation/pages/register2.dart';
import 'package:etooplay/src/features/Register/presentation/pages/register_screen.dart';
import 'package:etooplay/src/features/login/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String register2Route = '/register2';
}

class RoutesManager {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case Routes.register2Route:
        return MaterialPageRoute(
          builder: (context) => const Register2Screen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text('No Route Found'),
              ),
            );
          },
        );
    }
  }
}
