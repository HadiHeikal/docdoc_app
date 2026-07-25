import 'package:docdoc_app/core/constants/app_images.dart';
import 'package:docdoc_app/core/constants/ui_strings.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              AppImages.docdocLogoLowOpacity,
              fit: BoxFit.contain,
            ),
            Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColors.white,
                    AppColors.white.withValues(alpha: 0),
                  ],
                  stops: const [0.14, 0.4],
                ),
              ),
              child: Image.asset(
                AppImages.onboardingDoctorImage,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: 14.h,
              child: Text(
                UiStrings.onboardingTitle,
                textAlign: TextAlign.center,
                style: AppTextStyle.font32Bold.copyWith(
                  color: AppColors.primary100,
                  height: 1.4.h,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 14.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            UiStrings.onboardingSubtitle,
            textAlign: TextAlign.center,
            style: AppTextStyle.font14Regular.copyWith(color: AppColors.body),
          ),
        ),
      ],
    );
  }
}
