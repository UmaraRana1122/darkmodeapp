// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:darkmodeapp/screens/Global.dart';
import 'package:darkmodeapp/screens/home_screen.dart';
import 'package:darkmodeapp/screens/my_subscription.dart';
import 'package:darkmodeapp/screens/preferences.dart';
import 'package:darkmodeapp/screens/profile_upload.dart';
import 'package:darkmodeapp/screens/profile_verification.dart';
import 'package:darkmodeapp/screens/result_screen.dart';
import 'package:darkmodeapp/screens/settings.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/custom_row_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _current = 0;

  int click = 1;
  int _totalItems = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2d2d2d),
        body: SingleChildScrollView(
            child: Column(children: [
          stackContainer(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
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
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _current == 1
                          ? 'Premium'
                          : _current == 2
                              ? 'Boost'
                              : 'Reveal',
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
                            ).createShader(
                                Rect.fromLTWH(0.0, 0.0, 200.0, 10.0)),
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
                          color: Color(0xfff8f8f8).withOpacity(0.2)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomSmoothIndicator(
                          count: _totalItems,
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
                      textAlign: TextAlign.center,
                      _current == 1
                          ? 'Subscribe to all premium features to Increase \nyour chances of a perfect match'
                          : _current == 2
                              ? 'Boost your profile in your region to the top to \nincrease your chances of a match.'
                              : 'Reveal everyone who liked you to \nview their profile and like them back',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          color: Color(0xffa3a3a3),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 12),
                          SizedBox(
                            height: 180,
                            child: CarouselSlider.builder(
                              itemCount: _totalItems,
                              itemBuilder: (BuildContext c, int itemIndex,
                                  int pageViewIndex) {
                                if (_current == 0) {
                                } else if (_current == 1) {
                                } else {}

                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 6,
                                          child: Container(
                                            height: 118,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                color: const Color(0xFFFF0000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "1",
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily:
                                                        "QuicksandSemiBold",
                                                    color: Color(0xFFA3A3A3),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  _current == 1
                                                      ? 'Month'
                                                      : _current == 2
                                                          ? 'Month'
                                                          : 'Month',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        "QuicksandSemiBold",
                                                    color: Color(0xFFA3A3A3),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 12,
                                                ),
                                                Text(
                                                  _current == 1
                                                      ? '\$12.99'
                                                      : _current == 2
                                                          ? '\$15.99'
                                                          : '\$2.99',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        "QuicksandSemiBold",
                                                    color: Color(0xFFA3A3A3),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.85,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.90,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          20),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          20))),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(12.0),
                                                        child: Column(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: InkWell(
                                                                onTap: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child:
                                                                    Image.asset(
                                                                  "assets/logo/close.png",
                                                                  height: 18,
                                                                ),
                                                              ),
                                                            ),
                                                            Image.asset(
                                                              "assets/logo/Logo.png",
                                                              height: 102,
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Text(
                                                              _current == 1
                                                                  ? 'Boost your profile'
                                                                  : _current ==
                                                                          2
                                                                      ? 'Premium Subscription'
                                                                      : 'Reveal',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffff0000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Text(
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              _current == 1
                                                                  ? 'Lorem Ipsum is simply dummy text of the \nprinting and typesetting'
                                                                  : _current ==
                                                                          2
                                                                      ? 'Lorem Ipsum is simply dummy text of the \nprinting and typesetting'
                                                                      : 'Lorem Ipsum is simply dummy text of the \nprinting and typesetting',
                                                              // 'Lorem Ipsum is simply dummy text of the \nprinting and typesetting',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff2b2b2b),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 40,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                MyWidget(),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 40,
                                                            ),
                                                            _buildRow(
                                                                "Unlimited Likes"),
                                                            _buildRow(
                                                                "New Feature Added"),
                                                            _buildRow(
                                                                "Exciting Updates"),
                                                            _buildRow(
                                                                "Exclusive Access"),
                                                            _buildRow(
                                                                "Enhanced Performance"),
                                                            _buildRow(
                                                                "Special Offer Inside"),
                                                            SizedBox(
                                                              height: 40,
                                                            ),
                                                            InkWell(
                                                                onTap: () {
                                                                  Get.to(
                                                                      ProfileVerificationScreen());
                                                                },
                                                                child: buttonWidget(
                                                                    6,
                                                                    90,
                                                                    "Subscribe"))
                                                          ],
                                                        ),
                                                      ));
                                                },
                                              );
                                            },
                                            child: Container(
                                              height: 140,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.topLeft,
                                                  colors: [
                                                    Color(0xffFF0000),
                                                    Color(0xff990000),
                                                  ],
                                                ),
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFFFD6180),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "1",
                                                    style: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily:
                                                          "QuicksandSemiBold",
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    _current == 1
                                                        ? 'Boost'
                                                        : _current == 2
                                                            ? 'Premium'
                                                            : 'Month',
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          "QuicksandSemiBold",
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 12,
                                                  ),
                                                  Text(
                                                    _totalItems == 1
                                                        ? "\$5.99"
                                                        : "\$12.99",
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          "QuicksandSemiBold",
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 6,
                                          child: Container(
                                            height: 118,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                color: const Color(0xFFFF0000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "1",
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily:
                                                        "QuicksandSemiBold",
                                                    color: Color(0xFFA3A3A3),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  _totalItems == 1
                                                      ? "Month"
                                                      : "Total Months",
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        "QuicksandSemiBold",
                                                    color: Color(0xFFA3A3A3),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 12,
                                                ),
                                                Text(
                                                  _totalItems == 1
                                                      ? "\$7.99"
                                                      : "\$18.99",
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        "QuicksandSemiBold",
                                                    color: Color(0xFFA3A3A3),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              options: CarouselOptions(
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                    if (_current == 0) {
                                      if (click == 3) {
                                        click = 1;
                                      } else if (click == 2) {
                                        click = 1;
                                      } else {
                                        click;
                                      }
                                      _current = 0;
                                    } else if (_current == 1) {
                                      if (click == 1) {
                                        click = 2;
                                      } else if (click == 3) {
                                        click = 2;
                                      } else {
                                        click;
                                      }
                                      _current = 1;
                                    } else {
                                      if (click == 1) {
                                        click = 3;
                                      } else if (click == 2) {
                                        click = 3;
                                      } else {
                                        click;
                                      }
                                      _current = 2;
                                    }
                                  });
                                },
                                height: 400,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.95,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                // autoPlay: true,
                                // autoPlayInterval: Duration(seconds: 3),
                                // autoPlayAnimationDuration: Duration(milliseconds: 800),
                                // autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.0,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRowItem(
                  imageAsset: 'assets/logo/profile.png',
                  text: 'Profile Details',
                  pageRoute: const ProfileUploadScreen(),
                ),
                SizedBox(
                  width: 15,
                ),
                CustomRowItem(
                  imageAsset: 'assets/logo/filterr.png',
                  text: 'Preferences',
                  pageRoute: PreferenceScreen(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRowItem(
                  imageAsset: 'assets/logo/invite.png',
                  text: 'Invite Friends',
                  pageRoute: const ResultScreen(),
                ),
                SizedBox(
                  width: 15,
                ),
                CustomRowItem(
                  imageAsset: 'assets/logo/setting.png',
                  text: 'Settings',
                  pageRoute: SettingsScreen(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRowItem(
                  imageAsset: 'assets/logo/Info-2.png',
                  text: 'My tier',
                  pageRoute: const GlobalScreen(),
                ),
                SizedBox(
                  width: 15,
                ),
                CustomRowItem(
                  imageAsset: 'assets/logo/subscription.png',
                  text: 'Preferences',
                  pageRoute: MySubscriptionScreen(),
                ),
              ],
            ),
          ),
        ])));
  }

  Stack stackContainer(BuildContext context) {
    return Stack(children: [
      Container(
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
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/logo/arrow.png",
                                    height: 20,
                                  ),
                                  Spacer(),
                                  Text('Profile',
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                        ),
                                      )),
                                  Spacer(
                                    flex: 1,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
                  child: Container(
                    alignment: Alignment.center,
                    height: 295,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
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
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Column(children: [
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border:
                                            Border.all(color: MainColor.grey)),
                                    child: Image.asset(
                                      'assets/images/lyla.png',
                                      fit: BoxFit.fill,
                                      height: 160,
                                    ),
                                    // Positioned(
                                    //   top: 200,
                                    //   left: 240,
                                    //   child: Image.asset(
                                    //     "assets/logo/edit.png",
                                    //     height: 14,
                                    //   ),
                                    // ),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
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
                                )
                              ]),
                            ))
                      ],
                    ),
                  ),
                ),
              ])))
    ]);
  }

  String formatNumber(double number, int decimalPlaces) {
    String formatted = number.toString();
    int dotIndex = formatted.indexOf('.');
    if (dotIndex != -1) {
      if (formatted.length - dotIndex - 1 > decimalPlaces) {
        formatted = formatted.substring(0, dotIndex + decimalPlaces + 1);
      }
    }
    return formatted;
  }

  String divideStrings(String dividend, String divisor,
      {int decimalPlaces = 2}) {
    double? number1 = double.tryParse(dividend);
    double? number2 = double.tryParse(divisor);

    if (number1 != null && number2 != null && number2 != 0) {
      double result = number1 / number2;
      String formattedResult = formatNumber(result, decimalPlaces);
      return "($formattedResult Each)";
    } else {
      return "Invalid input or division by zero";
    }
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

Widget _buildRow(String text) {
  return Row(
    children: [
      Image.asset(
        "assets/logo/mark.png",
        height: 20,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        text,
        style: TextStyle(
          color: Color(0xff2b2b2b),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ],
  );
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selectedIndex = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      indicators.add(Container(
        width: 8.0,
        height: 8.0,
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              _selectedIndex == i ? Colors.red : Colors.grey.withOpacity(0.5),
        ),
      ));
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: _buildPageIndicator(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 3; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = i;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _selectedIndex == i ? 150.0 : 125.0,
                      width: 97,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _selectedIndex == i
                              ? Colors.transparent
                              : Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        gradient: _selectedIndex == i
                            ? LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topLeft,
                                colors: [
                                  Color(0xffFF0000),
                                  Color(0xff990000),
                                  Color(0xffFF0000),
                                ],
                              )
                            : null,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              (i + 1).toString(),
                              style: TextStyle(
                                color: _selectedIndex == i
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Month ${i + 1}',
                              style: TextStyle(
                                color: _selectedIndex == i
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              '\$${2.99 + i}',
                              style: TextStyle(
                                color: _selectedIndex == i
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
