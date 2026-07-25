import 'package:docdoc_app/config/routing/app_router.dart';
import 'package:docdoc_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocdocApp extends StatelessWidget {
  // The root of our application.
  final AppRouter appRouter;
  const DocdocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Docdoc App',
        theme: AppTheme.lightTheme,
        home: const Placeholder(), // Replace with your actual home widget
      ),
    );
  }
}
