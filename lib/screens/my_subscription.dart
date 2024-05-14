import 'package:darkmodeapp/screens/Chat_screen.dart';
import 'package:darkmodeapp/screens/height_screen.dart';
import 'package:darkmodeapp/screens/height_vivid.dart';
import 'package:darkmodeapp/screens/home_screen.dart';
import 'package:darkmodeapp/screens/profile_screen.dart';
import 'package:darkmodeapp/screens/result_screen.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/information_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:darkmodeapp/widgets/setting_widget.dart';
import 'package:darkmodeapp/widgets/subscription_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MySubscriptionScreen extends StatefulWidget {
  const MySubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<MySubscriptionScreen> createState() => _MySubscriptionScreenState();
}

class _MySubscriptionScreenState extends State<MySubscriptionScreen> {
  bool status1 = false;
  int selectedPage = 0;
  var pagelist = [
    const HomeScreen(),
    // const ResultScreen(taps: [], width: 90, height: 7, activeTextStyle: null,),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.shade800,
              Colors.grey.shade900,
              Colors.grey.shade900,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "assets/logo/arrow.png",
                          height: 20,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'My Subscription',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: 17.sp),
                      ),
                    ),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                subscriptionWidget(
                    "Premium",
                    "Plan Validity",
                    "12 Month",
                    "Plan Detail",
                    "\$119.88",
                    "(9.99)/month",
                    "Your plan will expire on 28 April 2024"),
                SizedBox(
                  height: 3.h,
                ),
                subscriptionWidget(
                    "Boost",
                    "Plan Validity",
                    "12 Month",
                    "Plan Detail",
                    "\$119.88",
                    "(9.99)/month",
                    "Your plan will expire on 28 April 2024"),
                SizedBox(
                  height: 3.h,
                ),
                subscriptionWidget(
                    "Reveal",
                    "Plan Validity",
                    "12 Month",
                    "Plan Detail",
                    "\$119.88",
                    "(9.99)/month",
                    "Your plan will expire on 28 April 2024"),
                SizedBox(
                  height: 2.h,
                ),
                InkWell(
                    onTap: () {
                      Get.to(SelectHeightScreen2(status: true));
                    },
                    child: buttonWidget(7, 90, "Next")),
              ]),
            ),
          ),
        ),
      ))
    ]));
  }
}
