import 'package:darkmodeapp/constants/theme.dart';
import 'package:darkmodeapp/screens/home_screen.dart';
import 'package:darkmodeapp/screens/register_otp.dart';
import 'package:darkmodeapp/screens/register_password.dart';
import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/screens/spalsh_screen.dart';
import 'package:darkmodeapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          theme: ThemeDataStyle.light, // Light/Default mode styles
          darkTheme: ThemeDataStyle.dark,
          debugShowCheckedModeBanner: false,
          home: RegisterOtpScreen(),
        );
      },
    );
  }
}
