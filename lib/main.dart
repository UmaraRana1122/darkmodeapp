import 'package:darkmodeapp/constants/theme.dart';
import 'package:darkmodeapp/screens/Chat_screen.dart';
import 'package:darkmodeapp/screens/Global.dart';
import 'package:darkmodeapp/screens/about_screen.dart';
import 'package:darkmodeapp/screens/aboutme_screen.dart';
import 'package:darkmodeapp/screens/alcohol_screen.dart';
import 'package:darkmodeapp/screens/children_screen.dart';
import 'package:darkmodeapp/screens/company_screen.dart';
import 'package:darkmodeapp/screens/dashboardScreen.dart';
import 'package:darkmodeapp/screens/dietary_vivid.dart';
import 'package:darkmodeapp/screens/dietry_screen.dart';
import 'package:darkmodeapp/screens/dob_screen.dart';
import 'package:darkmodeapp/screens/drink_screen.dart';
import 'package:darkmodeapp/screens/education.dart';
import 'package:darkmodeapp/screens/education_screen.dart';
import 'package:darkmodeapp/screens/family_screen.dart';
import 'package:darkmodeapp/screens/gender_screen.dart';
import 'package:darkmodeapp/screens/henna_chat.dart';
import 'package:darkmodeapp/screens/home_main.dart';
import 'package:darkmodeapp/screens/home_screen.dart';
import 'package:darkmodeapp/screens/insta_username.dart';
import 'package:darkmodeapp/screens/intrest_screen.dart';
import 'package:darkmodeapp/screens/job_title.dart';
import 'package:darkmodeapp/screens/join_screen.dart';
import 'package:darkmodeapp/screens/messages_screen.dart';
import 'package:darkmodeapp/screens/my_subscription.dart';
import 'package:darkmodeapp/screens/pet_screen.dart';
import 'package:darkmodeapp/screens/pets_vivid.dart';
import 'package:darkmodeapp/screens/physique_screen.dart';
import 'package:darkmodeapp/screens/political_views.dart';
import 'package:darkmodeapp/screens/preferences.dart';
import 'package:darkmodeapp/screens/profile_screen.dart';
import 'package:darkmodeapp/screens/profile_upload.dart';
import 'package:darkmodeapp/screens/profile_verification.dart';
import 'package:darkmodeapp/screens/ready_selfie1.dart';
import 'package:darkmodeapp/screens/register_otp.dart';
import 'package:darkmodeapp/screens/register_password.dart';
import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/screens/register_verify.dart';
import 'package:darkmodeapp/screens/religious_beleif.dart';
import 'package:darkmodeapp/screens/result_screen.dart';
import 'package:darkmodeapp/screens/settings.dart';
import 'package:darkmodeapp/screens/sexual_orientation.dart';
import 'package:darkmodeapp/screens/smoke_screen.dart';
import 'package:darkmodeapp/screens/smoking_screen.dart';
import 'package:darkmodeapp/screens/spalsh_screen.dart';
import 'package:darkmodeapp/screens/splash1_screen.dart';
import 'package:darkmodeapp/screens/upload.dart';
import 'package:darkmodeapp/screens/user_likes_screen.dart';
import 'package:darkmodeapp/screens/welcome_screen.dart';
import 'package:darkmodeapp/screens/workout_screen.dart';
import 'package:darkmodeapp/screens/workout_vivid.dart';
import 'package:darkmodeapp/screens/your_interest.dart';
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
          home: DashboardScreen(),
        );
      },
    );
  }
}
