import 'package:docdoc_app/config/helpers/extensions/navigation_ext.dart';
import 'package:docdoc_app/config/routing/routes.dart';
import 'package:docdoc_app/core/constants/ui_strings.dart';
import 'package:docdoc_app/core/theme/app_colors.dart';
import 'package:docdoc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.h,
      child: ElevatedButton(
        onPressed: () => context.pushReplacementNamed(Routes.loginView),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary100,
          foregroundColor: AppColors.white,
          elevation: 0,
          shape: const StadiumBorder(),
        ),
        child: Text(
          UiStrings.getStarted,
          style: AppTextStyle.font16SemiBold.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
