import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:company_test/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final Widget suffixIcon;
  final Widget? prefixIcon;

  const AppTextField({
    super.key,
    required this.title,
    required this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 4),
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor,
        border: Border.all(color: AppColors.appBorderColor),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A0F172A), // #0F172A with 10% opacity
            offset: Offset(0, 1),
            blurRadius: 4,
          ),
        ],
      ),
      child: TextField(
        cursorColor: AppColors.appBlueColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          hintStyle: GoogleFonts.inter(fontSize: 15.sp),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 14.h),
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
