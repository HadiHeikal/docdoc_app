import 'package:docdoc_app/features/onboarding/presentation/widgets/doc_logo_and_name.dart';
import 'package:docdoc_app/features/onboarding/presentation/widgets/get_started_button.dart';
import 'package:docdoc_app/features/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DocLogoAndName(),
              SizedBox(height: 36.h),
              Expanded(child: OnboardingBody()),
              GetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
