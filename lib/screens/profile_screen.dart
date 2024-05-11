import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:darkmodeapp/screens/ready_selfie1.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/custom_row_profile.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int click = 1;
    int _current = 0;
    return Scaffold(
        body: Container(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Stack(children: [
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        height: 195,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xff6a2a2a),
                              Color(0xff592829),
                              Color(0xff6a2a2a),
                            ]),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: 35,
                        left: 0,
                        right: 0, // Center the text horizontally
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/logo/arrow.png",
                                height: 22,
                              ),
                              Spacer(), // Add some spacing between the image and text
                              Text(
                                'Profile',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 20,
                        right: 20,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xfff8f8f8).withOpacity(0.2),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.24),
                                  offset: Offset(0, 2),
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.20),
                                  offset: Offset(0, 9),
                                  blurRadius: 9,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.12),
                                  offset: Offset(0, 20),
                                  blurRadius: 12,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.04),
                                  offset: Offset(0, 36),
                                  blurRadius: 14,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0),
                                  offset: Offset(0, 56),
                                  blurRadius: 16,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 1),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                border: Border.all(
                                                    color: MainColor.grey)),
                                            child: Image.asset(
                                              'assets/images/lyla.png',
                                              fit: BoxFit.fill,
                                              height: 160,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            bottom: 5,
                                            right: 0,
                                            child: Image.asset(
                                              "assets/logo/edit.png",
                                              height: 14,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Jessica M',
                                        style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        "assets/logo/verify.png",
                                        height: 23,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 375,
                        left: 20,
                        right: 20,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff555555),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.24),
                                  offset: Offset(0, 2),
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.20),
                                  offset: Offset(0, 9),
                                  blurRadius: 9,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.12),
                                  offset: Offset(0, 20),
                                  blurRadius: 12,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0.04),
                                  offset: Offset(0, 36),
                                  blurRadius: 14,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0xFF000000).withOpacity(0),
                                  offset: Offset(0, 56),
                                  blurRadius: 16,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Boost',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                        foreground: Paint()
                                          ..shader = RadialGradient(
                                            colors: <Color>[
                                              Color(0xFFFF0000),
                                              Color(0xFF990000),
                                              Color(0xFFFF3333),
                                            ],
                                          ).createShader(Rect.fromLTWH(
                                              0.0, 0.0, 200.0, 10.0)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Container(
                                    height: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(19),
                                        color:
                                            Color(0xfff8f8f8).withOpacity(0.2)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomSmoothIndicator(
                                        count: 3,
                                        activeIndex: _current,
                                        dotSize: 9.0,
                                        spacing: 12.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    'Boost your profile in your region to the top to \nincrease your chances of a match.',
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                        color: Color(0xffa3a3a3),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    child: CarouselSlider.builder(
                                      itemCount: 3,
                                      itemBuilder: (BuildContext c,
                                          int itemIndex, int pageViewIndex) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: GestureDetector(
                                              onTap: () {
                                                // onTap code...
                                              },
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 6,
                                                    child: Container(
                                                      height: 118,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xFFFF0000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "love",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFA3A3A3),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            "text",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFA3A3A3),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "text",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFA3A3A3),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            "text",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFA3A3A3),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Container(
                                                      height: 140,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            const LinearGradient(
                                                          begin: Alignment
                                                              .topCenter,
                                                          end:
                                                              Alignment.topLeft,
                                                          colors: [
                                                            Color(0xffFF0000),
                                                            Color(0xff990000),
                                                          ],
                                                        ),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xFFFD6180),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "text2",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFFFFFFF),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            "gggg",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFFFFFFF),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "ffff",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFFFFFFF),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 6,
                                                    child: Container(
                                                      height: 118,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xFFFF0000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "tttt",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFA3A3A3),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            "kkk",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFA3A3A3),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "kkk",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFA3A3A3),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            "kkk",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "QuicksandSemiBold",
                                                              color: Color(
                                                                  0xFFA3A3A3),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      options: CarouselOptions(
                                        onPageChanged: (index, reason) {
                                          _current = index;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 720,
                        right: 12,
                        left: 12,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CustomRowItem(
                                    imageAsset: 'assets/logo/profile.png',
                                    text: 'Profile Details',
                                    pageRoute: const ReadyForSelfie1Screen(),
                                    // ProfileDetailsScreen(),
                                  ),
                                  const SizedBox(width: 20),
                                  CustomRowItem(
                                      imageAsset: 'assets/logo/filterr.png',
                                      text: 'Preferences',
                                      pageRoute: const ReadyForSelfie1Screen()
                                      // PreferencesScreen(),
                                      ),
                                  // Add more CustomRowItems as needed
                                ],
                              ),
                              Row(
                                children: [
                                  CustomRowItem(
                                    imageAsset: 'assets/logo/invite.png',
                                    text: 'Invite Friends',
                                    pageRoute: const ReadyForSelfie1Screen(),
                                    // ProfileDetailsScreen(),
                                  ),
                                  const SizedBox(width: 20),
                                  CustomRowItem(
                                      imageAsset: 'assets/logo/setting.png',
                                      text: 'Settings',
                                      pageRoute: const ReadyForSelfie1Screen()
                                      // PreferencesScreen(),
                                      ),
                                  // Add more CustomRowItems as needed
                                ],
                              ),
                              Row(
                                children: [
                                  CustomRowItem(
                                    imageAsset: 'assets/logo/subscription.png',
                                    text: 'My Tier',
                                    pageRoute: const ReadyForSelfie1Screen(),
                                    // ProfileDetailsScreen(),
                                  ),
                                  const SizedBox(width: 20),
                                  CustomRowItem(
                                      imageAsset: 'assets/logo/Info-2.png',
                                      text: 'Information',
                                      pageRoute: const ReadyForSelfie1Screen()
                                      // PreferencesScreen(),
                                      ),
                                  // Add more CustomRowItems as needed
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ]))));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 60;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomSmoothIndicator extends StatelessWidget {
  final int count;
  final int activeIndex;
  final double dotSize;
  final double spacing;
  final Color dotColor;
  final Color activeDotColor;

  const CustomSmoothIndicator({
    Key? key,
    required this.count,
    required this.activeIndex,
    this.dotSize = 9.0,
    this.spacing = 18.0,
    this.dotColor = Colors.white, // Border color
    this.activeDotColor = Colors.red, // Fill color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (index) {
        final isActive = index == activeIndex;
        return Container(
          width: dotSize,
          height: dotSize,
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? activeDotColor : Colors.transparent,
            border: Border.all(
              color: dotColor,
              width: 1.0, // Border width
            ),
          ),
        );
      }),
    );
  }
}
