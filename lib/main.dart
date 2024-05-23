import 'package:darkmodeapp/constants/theme.dart';
import 'package:darkmodeapp/screens/dashboardScreen.dart';
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
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('Binding initialized');
  await Firebase.initializeApp();
  print('Firebase initialized');
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
          theme: ThemeDataStyle.light,
          darkTheme: ThemeDataStyle.dark,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}
