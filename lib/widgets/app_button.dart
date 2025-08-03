import 'package:company_test/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: AppColors.appBlueColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.appWhiteColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
