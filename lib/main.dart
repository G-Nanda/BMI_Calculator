import 'package:bmi_calculator/BMI_calculator/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "BMI Calculator",
          theme: ThemeData(
            primaryColor: const Color(0xff0D2B7A),

          ),
          home:const HomeScreen(),
        );
      },
    );
  }
}

