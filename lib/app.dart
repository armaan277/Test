import 'package:company_test/constants/app_colors.dart';
import 'package:company_test/views/select_language_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 800),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(),
          scaffoldBackgroundColor: AppColors.appBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.appBackgroundColor,
            centerTitle: true,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: SelectLanguageView(),
      ),
    );
  }
}
