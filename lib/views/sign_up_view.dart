import 'package:company_test/assets/pngs.dart';
import 'package:company_test/constants/app_colors.dart';
import 'package:company_test/views/login_view.dart';
import 'package:company_test/views/otp_verification_view.dart';
import 'package:company_test/widgets/app_button.dart';
import 'package:company_test/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isAgree = false;
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      children: [
                        Gap(33.h),
                        Text(
                          'Welcome!',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Please register to continue',
                          style: TextStyle(
                            color: AppColors.appGrayColor6,
                            fontSize: 15.sp,
                          ),
                        ),
                        Gap(22.h),
                        AppTextField(
                          title: 'Name',
                          suffixIcon: Image.asset(AppPngs.personPng),
                        ),
                        Gap(20.h),
                        AppTextField(
                          title: 'Email address',
                          suffixIcon: Image.asset(AppPngs.emailPng),
                        ),
                        Gap(20.h),
                        AppTextField(
                          title: 'Password',
                          suffixIcon: Image.asset(AppPngs.passwordPng),
                        ),
                        Gap(20.h),
                        AppTextField(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Image.asset(AppPngs.indiaLogoPng),
                          ),
                          title: '+91',
                          suffixIcon: Image.asset(AppPngs.whatsappPng),
                        ),
                        Gap(20.h),
                        AppTextField(
                          title: 'Mobile number',
                          suffixIcon: Image.asset(AppPngs.phonePng),
                        ),
                        Gap(22.h),
                        Row(
                          children: [
                            SizedBox(
                              height: 18.h,
                              width: 18.w,
                              child: CheckboxTheme(
                                data: CheckboxThemeData(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3.r),
                                  ),
                                ),
                                child: Checkbox(
                                  activeColor: AppColors.appBlueColor,
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.appGrayColorA,
                                  ),
                                  value: isAgree,
                                  onChanged: (value) {
                                    isAgree = value!;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            Gap(9.w),
                            RichText(
                              text: TextSpan(
                                text: 'I agree to the ',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Terms and Conditions',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.appBlueColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Gap(19.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
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
                                      return LoginView();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'Sign In',
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
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 30.0,
                    ),
                    child: AppButton(
                      title: 'Sign Up',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return OTPVerificationView();
                            },
                          ),
                        );
                      },
                    ),
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
