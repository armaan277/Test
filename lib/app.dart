import 'package:company_test/views/select_language_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(400, 800),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SelectLanguageView(),
      ),
    );
  }
}
