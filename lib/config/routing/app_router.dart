import 'package:docdoc_app/config/routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  MaterialPageRoute<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        ); // Replace with your actual home widget
      case Routes.profileView:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        ); // Replace with your actual profile widget
      case Routes.onboardingView:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        ); // Replace with your actual onboarding widget
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        ); // Replace with your actual login widget
      case Routes.registerView:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        ); // Replace with your actual register widget
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
