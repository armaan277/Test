import 'package:company_test/constants/app_colors.dart';
import 'package:company_test/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectLanguageView extends StatelessWidget {
  SelectLanguageView({super.key});

  List<Map<String, String>> languages = [
    {"title": "English", "subtitle": "Hi"},
    {"title": "Hindi", "subtitle": "नमस्ते"},
    {"title": "Bengali", "subtitle": "হ্যালো"},
    {"title": "Kannada", "subtitle": "ನಮಸ್ಕಾರ"},
    {"title": "Punjabi", "subtitle": "ਸਤ ਸ੍ਰੀ ਅਕਾਲ"},
    {"title": "Tamil", "subtitle": "வணக்கம்"},
    {"title": "Telugu", "subtitle": "నమస్కారం"},
    {"title": "French", "subtitle": "Bonjour"},
    {"title": "Spanish", "subtitle": "Hola"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
        scrolledUnderElevation: 0,
        title: Text(
          'Choose Your Language',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              height: 615,
              decoration: BoxDecoration(
                color: AppColors.appWhiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          '${languages[index]['title']}',
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          '${languages[index]['subtitle']}',
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            color: AppColors.appGrayColor,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            languages[index]['title'] == 'English'
                                ? Icons.radio_button_checked
                                : Icons.radio_button_off,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Gap(25.h),
            AppButton(title: 'Select', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
