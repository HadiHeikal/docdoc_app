import 'package:docdoc_app/core/constants/app_images.dart';
import 'package:docdoc_app/core/constants/ui_strings.dart';
import 'package:docdoc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppImages.docdocLogo, width: 32.w, height: 32.w),
        SizedBox(width: 8.w),
        Text(UiStrings.appName, style: AppTextStyle.font24Bold),
      ],
    );
  }
}
