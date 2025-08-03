import 'package:company_test/assets/pngs.dart';
import 'package:company_test/constants/app_colors.dart';
import 'package:company_test/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OTPVerificationView extends StatefulWidget {
  const OTPVerificationView({super.key});

  @override
  State<OTPVerificationView> createState() => _OTPVerificationViewState();
}

class _OTPVerificationViewState extends State<OTPVerificationView> {
  late final TextEditingController pinController;

  late final FocusNode focusNode;

  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
    focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50.h,
      height: 48.w,
      textStyle: TextStyle(fontSize: 16.sp, color: AppColors.appGrayColor6),
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.appBorderColor),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A0F172A),
            offset: Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
    );

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
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Gap(90.h),
                        Text(
                          textAlign: TextAlign.center,
                          'Email OTP\nVerification',
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(18.h),
                        Text(
                          textAlign: TextAlign.center,
                          'Please ensure that the email id mentioned is valid as we have sent an OTP to your email.',
                          style: GoogleFonts.roboto(
                            color: AppColors.appGrayColor6,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Pinput(
                                length: 6,
                                controller: pinController,
                                focusNode: focusNode,
                                defaultPinTheme: defaultPinTheme,
                                separatorBuilder: (index) =>
                                    SizedBox(width: 13.w),
                                validator: (value) {
                                  return value == '222222'
                                      ? null
                                      : 'Pin is incorrect';
                                },
                                hapticFeedbackType:
                                    HapticFeedbackType.lightImpact,
                                onCompleted: (pin) {
                                  debugPrint('onCompleted: $pin');
                                },
                                onChanged: (value) {
                                  debugPrint('onChanged: $value');
                                },
                                cursor: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 8.h),
                                      width: 22,
                                      height: 1,
                                      color: AppColors.appBorderColor,
                                    ),
                                  ],
                                ),
                                focusedPinTheme: defaultPinTheme.copyWith(
                                  decoration: defaultPinTheme.decoration!
                                      .copyWith(
                                        borderRadius: BorderRadius.circular(
                                          10.r,
                                        ),
                                      ),
                                ),
                                submittedPinTheme: defaultPinTheme.copyWith(
                                  decoration: defaultPinTheme.decoration!
                                      .copyWith(
                                        borderRadius: BorderRadius.circular(
                                          10.r,
                                        ),
                                      ),
                                ),
                                errorPinTheme: defaultPinTheme.copyBorderWith(
                                  border: Border.all(color: Colors.redAccent),
                                ),
                              ),
                              Gap(17.h),
                              Text(
                                '+91 7676286822?',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(140.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive OTP code? ",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size(0, 0),
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Resend OTP',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColors.appBlueColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: AppButton(title: 'Verify', onTap: () {}),
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
