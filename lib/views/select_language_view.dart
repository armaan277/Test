import 'package:company_test/constants/app_colors.dart';
import 'package:company_test/models/language.dart';
import 'package:company_test/views/sign_up_view.dart';
import 'package:company_test/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectLanguageView extends StatefulWidget {
  const SelectLanguageView({super.key});

  @override
  State<SelectLanguageView> createState() => _SelectLanguageViewState();
}

class _SelectLanguageViewState extends State<SelectLanguageView> {
  List<Language> languages = [
    Language(title: "English", subtitle: "Hi"),
    Language(title: "Hindi", subtitle: "नमस्ते"),
    Language(title: "Bengali", subtitle: "হ্যালো"),
    Language(title: "Kannada", subtitle: "ನಮಸ್ಕಾರ"),
    Language(title: "Punjabi", subtitle: "ਸਤ ਸ੍ਰੀ ਅਕਾਲ"),
    Language(title: "Tamil", subtitle: "வணக்கம்"),
    Language(title: "Telugu", subtitle: "నమస్కారం"),
    Language(title: "French", subtitle: "Bonjour"),
    Language(title: "Spanish", subtitle: "Hola"),
  ];

  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Your Language',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Container(
              height: 615.h,
              decoration: BoxDecoration(
                color: AppColors.appWhiteColor,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: AppColors.appBorderColor),
              ),
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  final language = languages[index];
                  return Column(
                    children: [
                      Theme(
                        data: Theme.of(context).copyWith(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                        ),
                        child: ListTile(
                          onTap: () {
                            selectedLanguage = language.title;
                            setState(() {});
                          },
                          title: Text(
                            language.title,
                            style: GoogleFonts.inter(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            language.subtitle,
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              color: AppColors.appGrayColor6,
                            ),
                          ),
                          trailing: Radio(
                            activeColor: Colors.black,
                            value: language.title,
                            groupValue: selectedLanguage,
                            onChanged: (value) {
                              selectedLanguage = value!;
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Gap(25.h),
            AppButton(
              title: 'Select',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpView();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
