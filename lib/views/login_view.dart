import 'package:company_test/assets/pngs.dart';
import 'package:company_test/constants/app_colors.dart';
import 'package:company_test/views/sign_up_view.dart';
import 'package:company_test/widgets/app_button.dart';
import 'package:company_test/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 66.h),
            child: Image.asset(AppPngs.appLogoPng, width: 228.w, height: 60.h),
          ),
          Gap(33.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.appWhiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.r),
                  topLeft: Radius.circular(20.r),
                ),
                border: Border.all(color: AppColors.appBorderColor),
              ),
              child: Column(
                children: [
                  Gap(34.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.w),
                    child: Column(
                      children: [
                        Gap(110.h),
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Please sign-in to continue',
                          style: TextStyle(
                            color: AppColors.appGrayColor6,
                            fontSize: 15.sp,
                          ),
                        ),
                        Gap(22.h),
                        AppTextField(
                          title: 'Email address',
                          suffixIcon: Image.asset(AppPngs.emailPng),
                        ),
                        Gap(20.h),
                        AppTextField(
                          title: 'Password',
                          suffixIcon: Image.asset(AppPngs.passwordPng),
                        ),
                        Gap(6.h),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                        ),
                        Gap(100.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(fontSize: 15.sp),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                minimumSize: Size(0, 0),
                                padding: EdgeInsets.zero,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SignUpView();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: AppColors.appBlueColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: AppButton(title: 'Sign In', onTap: () {}),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
