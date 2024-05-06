import 'package:darkmodeapp/constants/theme.dart';
import 'package:darkmodeapp/screens/about_screen.dart';
import 'package:darkmodeapp/screens/alcohol_screen.dart';
import 'package:darkmodeapp/screens/dietry_screen.dart';
import 'package:darkmodeapp/screens/dob_screen.dart';
import 'package:darkmodeapp/screens/education_screen.dart';
import 'package:darkmodeapp/screens/family_screen.dart';
import 'package:darkmodeapp/screens/gender_screen.dart';
import 'package:darkmodeapp/screens/home_screen.dart';
import 'package:darkmodeapp/screens/intrest_screen.dart';
import 'package:darkmodeapp/screens/join_screen.dart';
import 'package:darkmodeapp/screens/pet_screen.dart';
import 'package:darkmodeapp/screens/register_otp.dart';
import 'package:darkmodeapp/screens/register_password.dart';
import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/screens/register_verify.dart';
import 'package:darkmodeapp/screens/smoking_screen.dart';
import 'package:darkmodeapp/screens/spalsh_screen.dart';
import 'package:darkmodeapp/screens/splash1_screen.dart';
import 'package:darkmodeapp/screens/welcome_screen.dart';
import 'package:darkmodeapp/screens/workout_screen.dart';
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
          home: DietaryScreen(),
        );
      },
    );
  }
}
