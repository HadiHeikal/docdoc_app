import 'package:docdoc_app/config/routing/routes.dart';
import 'package:docdoc_app/features/auth/presentation/login/views/login_view.dart';
import 'package:docdoc_app/features/auth/presentation/register/views/register_view.dart';
import 'package:docdoc_app/features/home/presentation/home_view.dart';
import 'package:docdoc_app/features/onboarding/presentation/onboarding_view.dart';
import 'package:docdoc_app/features/profile/presentation/profile_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  MaterialPageRoute<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.profileView:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.onboardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerView:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
