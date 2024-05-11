import 'dart:ui';

import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:darkmodeapp/widgets/subscription_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GlobalScreen extends StatefulWidget {
  const GlobalScreen({Key? key}) : super(key: key);

  @override
  State<GlobalScreen> createState() => _GlobalScreenState();
}

class _GlobalScreenState extends State<GlobalScreen> {
  String globalPotValue = "";
  String tierStatus = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: Container(
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Global Pot',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: 17.sp),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/logo/Logo.png",
                            height: 196,
                            width: 230,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 1),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              MyInkWell(
                                onTap: () {
                                  // CustomNavigator.pushNavigate(context,
                                  //     const TierPotDistributionScreen());
                                },
                                child: Container(
                                    height: 27,
                                    width: 60,
                                    margin: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 10,
                                        bottom: 10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: MainColor.colorWhite,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: MainColor.heartRed,
                                            width: 1)),
                                    child: Text(
                                      globalPotValue == ""
                                          ? ""
                                          : double.parse(
                                                  globalPotValue.toString())
                                              .toStringAsFixed(2),
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "QuicksandSemiBold"),
                                    )),
                              ),
                              MyInkWell(
                                radius: 70,
                                shape: const CircleBorder(),
                                onTap: () {
                                  diamondDialogueBox(context);
                                },
                                child: Image.asset(
                                  'assets/logo/Info.png',
                                  height: 22,
                                  width: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      '50% of the pot is shared across 4 Tires every month',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Color(0xff7A7A7A),
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp),
                      ),
                    ),
                    tierStatus == "Diamond"
                        ? Column(
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 40),
                                child: InkWell(
                                  radius: MediaQuery.of(context).size.width,
                                  onTap: () {
                                    // diamondTierGroups();
                                    setState(() {});
                                  },
                                  child: Stack(children: [
                                    Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 61,
                                          decoration: BoxDecoration(
                                            color: MainColor.colorWhite,
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            border: Border.all(
                                              color: const Color(0xFF898989),
                                              width: 1,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text('TIER CHATROOM',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          MainColor.colorBlack,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily:
                                                          "QuicksandBold")),
                                              InkWell(
                                                onTap: () {
                                                  // diamondTierDialogueBox(
                                                  //     context);
                                                  // setState(() {});
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  alignment: Alignment.topRight,
                                                  child: Image.asset(
                                                    'assets/images/Information_logo.png',
                                                    height: 20,
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: -4,
                                      right: -4,
                                      child: Image.asset(
                                        'assets/logo/diamond.png',
                                        height: 48,
                                        width: 48,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: InkWell(
                                  radius: MediaQuery.of(context).size.width,
                                  onTap: () {
                                    // platinumTierGroups();
                                    setState(() {});
                                  },
                                  child: Stack(children: [
                                    Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 61,
                                          decoration: BoxDecoration(
                                            color: Color(0xff5a5a5a),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color(0xFF898989),
                                              width: 1,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text('TIER CHATROOM',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          MainColor.colorBlack,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily:
                                                          "QuicksandBold")),
                                              InkWell(
                                                onTap: () {
                                                  // platinumDialogueBox(context);
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  alignment: Alignment.topRight,
                                                  child: Image.asset(
                                                    'assets/logo/Info.png',
                                                    height: 12,
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: -1,
                                      right: -15,
                                      child: Image.asset(
                                        'assets/logo/platinium.png',
                                        height: 48,
                                        width: 80,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: InkWell(
                                  radius: MediaQuery.of(context).size.width,
                                  onTap: () {
                                    // goldTierGroups();
                                    setState(() {});
                                  },
                                  child: Stack(children: [
                                    Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 61,
                                          decoration: BoxDecoration(
                                            color: Color(0xff5a5a5a),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color(0xFF898989),
                                              width: 1,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text('TIER CHATROOM',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          MainColor.colorBlack,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily:
                                                          "QuicksandBold")),
                                              InkWell(
                                                onTap: () {
                                                  // goldDialogueBox(context);
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  alignment: Alignment.topRight,
                                                  child: Image.asset(
                                                    'assets/logo/Info.png',
                                                    height: 12,
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: -1,
                                      right: -18,
                                      child: Image.asset(
                                        'assets/logo/gold.png',
                                        height: 48,
                                        width: 80,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: InkWell(
                                  radius: MediaQuery.of(context).size.width,
                                  onTap: () {
                                    // silverTierGroups();
                                    setState(() {});
                                  },
                                  child: Stack(children: [
                                    Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 61,
                                          decoration: BoxDecoration(
                                            color: Color(0xff5a5a5a),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color(0xFF898989),
                                              width: 1,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text('TIER CHATROOM',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          MainColor.colorBlack,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily:
                                                          "QuicksandBold")),
                                              InkWell(
                                                onTap: () {
                                                  // silverDialogueBox(context);
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  alignment: Alignment.topRight,
                                                  child: Image.asset(
                                                    'assets/logo/Info.png',
                                                    height: 12,
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: -1,
                                      right: -18,
                                      child: Image.asset(
                                        'assets/logo/silver.png',
                                        height: 48,
                                        width: 80,
                                      ),
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          )
                        : tierStatus == "Platinum"
                            ? Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 40),
                                    child: Stack(children: [
                                      Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                                sigmaY: 0.7, sigmaX: 0.7),
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {});
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 61,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff5a5a5a),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xFF898989),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Text('TIER CHATROOM',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Color(
                                                                0xFFE7E7E7),
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontFamily:
                                                                "QuicksandBold")),
                                                    InkWell(
                                                      onTap: () {
                                                        // diamondTierDialogueBox(
                                                        //     context);
                                                        // setState(() {});
                                                      },
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 8),
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Image.asset(
                                                          'assets/logo/Info.png',
                                                          height: 12,
                                                          width: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            alignment: Alignment.center,
                                            child: Image.asset(
                                              'assets/logo/Info.png',
                                              height: 39,
                                              width: 27,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: -4,
                                        right: -4,
                                        child: Image.asset(
                                          'assets/logo/diamond.png',
                                          height: 48,
                                          width: 48,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 20),
                                    child: InkWell(
                                      radius: MediaQuery.of(context).size.width,
                                      onTap: () {
                                        // platinumTierGroups();
                                        setState(() {});
                                      },
                                      child: Stack(children: [
                                        Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 61,
                                              decoration: BoxDecoration(
                                                color: Color(0xff5a5a5a),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFF898989),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text('TIER CHATROOM',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: MainColor
                                                              .colorBlack,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily:
                                                              "QuicksandBold")),
                                                  InkWell(
                                                    onTap: () {
                                                      // platinumDialogueBox(
                                                      //     context);
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Image.asset(
                                                        'assets/logo/Info.png',
                                                        height: 12,
                                                        width: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: -1,
                                          right: -14,
                                          child: Image.asset(
                                            'assets/logo/platinium.png',
                                            height: 48,
                                            width: 80,
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 20),
                                    child: InkWell(
                                      radius: MediaQuery.of(context).size.width,
                                      onTap: () {
                                        // goldTierGroups();
                                        setState(() {});
                                      },
                                      child: Stack(children: [
                                        Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 61,
                                              decoration: BoxDecoration(
                                                color: Color(0xff5a5a5a),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFF898989),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text('TIER CHATROOM',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: MainColor
                                                              .colorBlack,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily:
                                                              "QuicksandBold")),
                                                  InkWell(
                                                    onTap: () {
                                                      // goldDialogueBox(context);
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Image.asset(
                                                        'assets/logo/Info.png',
                                                        height: 12,
                                                        width: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: -1,
                                          right: -18,
                                          child: Image.asset(
                                            'assets/logo/gold.png',
                                            height: 48,
                                            width: 80,
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 20),
                                    child: InkWell(
                                      radius: MediaQuery.of(context).size.width,
                                      onTap: () {
                                        // silverTierGroups();
                                        setState(() {});
                                      },
                                      child: Stack(children: [
                                        Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 61,
                                              decoration: BoxDecoration(
                                                color: Color(0xff5a5a5a),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFF898989),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text('TIER CHATROOM',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: MainColor
                                                              .colorBlack,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily:
                                                              "QuicksandBold")),
                                                  InkWell(
                                                    onTap: () {
                                                      // silverDialogueBox(
                                                      //     context);
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Image.asset(
                                                        'assets/logo/Info.png',
                                                        height: 12,
                                                        width: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: -1,
                                          right: -18,
                                          child: Image.asset(
                                            'assets/logo/silver.png',
                                            height: 48,
                                            width: 80,
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ],
                              )
                            : tierStatus == "Gold"
                                ? Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 40),
                                        child: Stack(children: [
                                          Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              ImageFiltered(
                                                imageFilter: ImageFilter.blur(
                                                    sigmaY: 0.7, sigmaX: 0.7),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 61,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff5a5a5a),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                        color: const Color(
                                                            0xFF898989),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                            'TIER CHATROOM',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Color(
                                                                    0xFFE7E7E7),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontFamily:
                                                                    "QuicksandBold")),
                                                        InkWell(
                                                          onTap: () {
                                                            // diamondTierDialogueBox(
                                                            //     context);
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 8),
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Image.asset(
                                                              'assets/logo/Info.png',
                                                              height: 12,
                                                              width: 20,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                alignment: Alignment.center,
                                                child: Image.asset(
                                                  'assets/logo/Info.png',
                                                  height: 39,
                                                  width: 27,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            top: -4,
                                            right: -4,
                                            child: Image.asset(
                                              'assets/logo/diamond.png',
                                              height: 48,
                                              width: 48,
                                            ),
                                          ),
                                        ]),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: Stack(children: [
                                          Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              ImageFiltered(
                                                imageFilter: ImageFilter.blur(
                                                    sigmaY: 0.7, sigmaX: 0.7),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 61,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff5a5a5a),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                        color: const Color(
                                                            0xFF898989),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                            'TIER CHATROOM',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Color(
                                                                    0xFFE7E7E7),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontFamily:
                                                                    "QuicksandBold")),
                                                        InkWell(
                                                          onTap: () {
                                                            // platinumDialogueBox(
                                                            //     context);
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 8),
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Image.asset(
                                                              'assets/logo/Info.png',
                                                              height: 12,
                                                              width: 20,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                alignment: Alignment.center,
                                                child: Image.asset(
                                                  'assets/logo/Info.png',
                                                  height: 39,
                                                  width: 27,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            top: -1,
                                            right: -14,
                                            child: Image.asset(
                                              'assets/logo/platinium.png',
                                              height: 48,
                                              width: 80,
                                            ),
                                          ),
                                        ]),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: InkWell(
                                          radius:
                                              MediaQuery.of(context).size.width,
                                          onTap: () {
                                            // goldTierGroups();
                                            setState(() {});
                                          },
                                          child: Stack(children: [
                                            Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 61,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff5a5a5a),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xFF898989),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                          'TIER CHATROOM',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: MainColor
                                                                  .colorBlack,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontFamily:
                                                                  "QuicksandBold")),
                                                      InkWell(
                                                        onTap: () {
                                                          // goldDialogueBox(
                                                          //     context);
                                                          setState(() {});
                                                        },
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 8),
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Image.asset(
                                                            'assets/logo/Info.png',
                                                            height: 12,
                                                            width: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Positioned(
                                              top: -1,
                                              right: -18,
                                              child: Image.asset(
                                                'assets/logo/gold.png',
                                                height: 48,
                                                width: 80,
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: InkWell(
                                          radius:
                                              MediaQuery.of(context).size.width,
                                          onTap: () {
                                            // silverTierGroups();
                                            setState(() {});
                                          },
                                          child: Stack(children: [
                                            Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 61,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff5a5a5a),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xFF898989),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                          'TIER CHATROOM',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: MainColor
                                                                  .colorBlack,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontFamily:
                                                                  "QuicksandBold")),
                                                      InkWell(
                                                        onTap: () {
                                                          // silverDialogueBox(
                                                          //     context);
                                                          setState(() {});
                                                        },
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 8),
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Image.asset(
                                                            'assets/logo/Info.png',
                                                            height: 12,
                                                            width: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Positioned(
                                              top: -1,
                                              right: -18,
                                              child: Image.asset(
                                                'assets/logo/silver.png',
                                                height: 48,
                                                width: 80,
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ],
                                  )
                                : tierStatus == "Silver"
                                    ? Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 40),
                                            child: Stack(children: [
                                              Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                            sigmaY: 0.7,
                                                            sigmaX: 0.7),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 52,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff5a5a5a),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF898989),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                                'TIER CHATROOM',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color(
                                                                        0xFFE7E7E7),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontFamily:
                                                                        "QuicksandBold")),
                                                            InkWell(
                                                              onTap: () {
                                                                // diamondTierDialogueBox(
                                                                //     context);
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 5),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/logo/Logo.png',
                                                                  height: 20,
                                                                  width: 20,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'assets/logo/Info.png',
                                                      height: 39,
                                                      width: 27,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: -4,
                                                right: -4,
                                                child: Image.asset(
                                                  'assets/logo/diamond.png',
                                                  height: 48,
                                                  width: 48,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 20),
                                            child: Stack(children: [
                                              Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                            sigmaY: 0.7,
                                                            sigmaX: 0.7),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 61,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff5a5a5a),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF898989),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                                'TIER CHATROOM',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color(
                                                                        0xFFE7E7E7),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontFamily:
                                                                        "QuicksandBold")),
                                                            InkWell(
                                                              onTap: () {
                                                                // platinumDialogueBox(
                                                                //     context);
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 8),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/logo/Info.png',
                                                                  height: 12,
                                                                  width: 20,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'assets/logo/lock.png',
                                                      color: Colors.white,
                                                      height: 39,
                                                      width: 27,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: -1,
                                                right: -14,
                                                child: Image.asset(
                                                  'assets/logo/platinium.png',
                                                  height: 48,
                                                  width: 80,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 20),
                                            child: Stack(children: [
                                              Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                            sigmaY: 0.7,
                                                            sigmaX: 0.7),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 61,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff5a5a5a),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF898989),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                                'TIER CHATROOM',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color(
                                                                        0xFFE7E7E7),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontFamily:
                                                                        "QuicksandBold")),
                                                            InkWell(
                                                              onTap: () {
                                                                // goldDialogueBox(
                                                                //     context);
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 8),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/logo/Info.png',
                                                                  height: 12,
                                                                  width: 20,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'assets/logo/lock.png',
                                                      color: Colors.white,
                                                      height: 39,
                                                      width: 27,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: -1,
                                                right: -18,
                                                child: Image.asset(
                                                  'assets/logo/gold.png',
                                                  height: 48,
                                                  width: 80,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 20),
                                            child: InkWell(
                                              radius: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              onTap: () {
                                                // silverTierGroups();
                                                setState(() {});
                                              },
                                              child: Stack(children: [
                                                Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 61,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff5a5a5a),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xFF898989),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          const Text(
                                                              'TIER CHATROOM',
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  color: MainColor
                                                                      .colorBlack,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontFamily:
                                                                      "QuicksandBold")),
                                                          InkWell(
                                                            onTap: () {
                                                              // silverDialogueBox(
                                                              //     context);
                                                              setState(() {});
                                                            },
                                                            child: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 8),
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child:
                                                                  Image.asset(
                                                                'assets/logo/Info.png',
                                                                height: 11,
                                                                width: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Positioned(
                                                  top: -1,
                                                  right: -18,
                                                  child: Image.asset(
                                                    'assets/logo/silver.png',
                                                    height: 48,
                                                    width: 80,
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ),
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 40),
                                            child: Stack(children: [
                                              Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                            sigmaY: 0.7,
                                                            sigmaX: 0.7),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 61,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff5a5a5a),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF898989),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                                'TIER CHATROOM',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    color: Color(
                                                                        0xFF7A7A7A),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        "QuicksandBold")),
                                                            InkWell(
                                                              onTap: () {
                                                                // diamondTierDialogueBox(
                                                                //     context);
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 8),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/logo/Info.png',
                                                                  height: 12,
                                                                  width: 20,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'assets/logo/lock.png',
                                                      color:
                                                          MainColor.colorWhite,
                                                      height: 39,
                                                      width: 27,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: 4,
                                                right: -9,
                                                child: Image.asset(
                                                  'assets/logo/diamond.png',
                                                  height: 23,
                                                  width: 48,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 20),
                                            child: Stack(children: [
                                              Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                            sigmaY: 0.7,
                                                            sigmaX: 0.7),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 61,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff5a5a5a),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF898989),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                                'TIER CHATROOM',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    color: Color(
                                                                        0xFF7A7A7A),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        "QuicksandBold")),
                                                            InkWell(
                                                              onTap: () {
                                                                // platinumDialogueBox(
                                                                //     context);
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 8),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/logo/Info.png',
                                                                  height: 12,
                                                                  width: 20,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'assets/logo/lock.png',
                                                      color:
                                                          MainColor.colorWhite,
                                                      height: 39,
                                                      width: 27,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: -1,
                                                right: -14,
                                                child: Image.asset(
                                                  'assets/logo/platinium.png',
                                                  height: 48,
                                                  width: 80,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 20),
                                            child: Stack(children: [
                                              Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                            sigmaY: 0.7,
                                                            sigmaX: 0.7),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 61,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff5a5a5a),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF898989),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                                'TIER CHATROOM',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color(
                                                                        0xFFE7E7E7),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontFamily:
                                                                        "QuicksandBold")),
                                                            InkWell(
                                                              onTap: () {
                                                                // goldDialogueBox(
                                                                //     context);
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 8),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/logo/Info.png',
                                                                  height: 12,
                                                                  width: 20,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    alignment: Alignment.center,
                                                    // child: SvgPicture.asset(
                                                    //   'assets/images/image_6.svg',
                                                    //   height: 39,
                                                    //   width: 27,
                                                    // ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: -1,
                                                right: -18,
                                                child: Image.asset(
                                                  'assets/logo/gold.png',
                                                  height: 48,
                                                  width: 80,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20, top: 20),
                                            child: Stack(children: [
                                              Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                            sigmaY: 0.7,
                                                            sigmaX: 0.7),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 61,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff5a5a5a),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF898989),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                                'TIER CHATROOM',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color(
                                                                        0xFFE7E7E7),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontFamily:
                                                                        "QuicksandBold")),
                                                            InkWell(
                                                              onTap: () {
                                                                // silverDialogueBox(
                                                                //     context);
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 8),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/logo/Info.png',
                                                                  height: 12,
                                                                  width: 20,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                top: -1,
                                                right: -17,
                                                child: Image.asset(
                                                  'assets/logo/silver.png',
                                                  height: 48,
                                                  width: 80,
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                  ]),
            ),
          ),
        ),
      ))
    ]));
  }

  void diamondDialogueBox(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(13.0))),
          insetPadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          backgroundColor: MainColor.colorWhite,
          title: Column(
            children: [
              Image.asset(
                'assets/logo/Logo.png',
                height: 120,
                width: 102,
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                  "50% is shared across 4 tiers every month!   Distributed equally across each tier. Silver - 1/16 or (6.25%) Gold - 1/16 or (6.25%) Platinum - 1/8 or (12.5%) Diamond – 1/4 or (25.0%)  You get a portion of each tier you achieved.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "QuicksandMedium",
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  "Example: Diamond Tier users share 25% + Platinum, Gold & Silver (Participate in the sharing of full 50%) ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "QuicksandMedium",
                  )),
              const SizedBox(
                height: 23,
              ),
            ],
          ),
        );
      },
    );
  }
}
