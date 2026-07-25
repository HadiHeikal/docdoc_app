import 'package:docdoc_app/config/routing/app_router.dart';
import 'package:docdoc_app/config/routing/routes.dart';
import 'package:docdoc_app/core/theme/app_theme.dart';
import 'package:docdoc_app/core/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocdocApp extends StatelessWidget {
  // The root of our application.
  final AppRouter appRouter;
  const DocdocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return MaterialApp(
              title: 'Docdoc App',
              // Set the light and dark themes,
              //and the theme mode based on the ThemeCubit state
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: themeMode,
              // Set the initial route and the route generator
              onGenerateRoute: appRouter.generateRoutes,
              initialRoute: Routes.onboardingView,
              debugShowCheckedModeBanner: false,
              home: const Placeholder(), // Replace with your actual home widget
            );
          },
        ),
      ),
    );
  }
}
