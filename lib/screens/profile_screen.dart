import 'package:carousel_slider/carousel_slider.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int click = 1;
    int _current = 0;
  List<MainPlans> mainPlans = [];

    return Scaffold(
     
      body: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Stack(
            children: [
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
                  padding: const EdgeInsets.all(12.0),
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
                                        borderRadius: BorderRadius.circular(4),
                                        border:
                                            Border.all(color: MainColor.grey)),
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
               SizedBox(
                height: 180,
                child: CarouselSlider.builder(
                  itemCount: mainPlans.length,
                  itemBuilder:
                      (BuildContext c, int itemIndex, int pageViewIndex) {
                    if (_current == 0) {
                    } else if (_current == 1) {
                    } else {}

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: GestureDetector(
                          onTap: () {
                            // subPlansList.clear();
                            // if (itemIndex == 0) {
                            //   for (var data in responsemain.data!.boostList!) {
                            //     subPlansList.add(data);
                            //   }
                            // } else if (itemIndex == 1) {
                            //   for (var data in responsemain.data!.revealList!) {
                            //     subPlansList.add(data);
                            //   }
                            // } else {
                            //   for (var data
                            //       in responsemain.data!.premiumList!) {
                            //     subPlansList.add(data);
                            //   }
                            // }
                            // subPlansList = List.from(subPlansList.reversed);
                            // filterBottomSheet(context, _current);
                            // setState(() {});
                          },
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Container(
                                  height: 118,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: MainColor.colorWhite,
                                      border: Border.all(
                                        color: const Color(0xFFFD6180),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("love",
                                          // plansList[_current][0]
                                          //     .duration
                                          //     .toString(),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "QuicksandSemiBold",
                                              color: Color(0xFFA3A3A3))),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text("text",
                                          // plansList[_current][0]
                                          //     .durationtype
                                          //     .toString(),
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "QuicksandSemiBold",
                                              color: Color(0xFFA3A3A3))),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "text",
                                          // '${plansList[_current][0].price} ${plansList[_current][0].currency}',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "QuicksandSemiBold",
                                              color: Color(0xFFA3A3A3))),
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
                                        gradient: const LinearGradient(colors: [
                                          MainColor.colorFD6180,
                                          MainColor.colorFE8155,
                                        ]),
                                        border: Border.all(
                                          color: const Color(0xFFFD6180),
                                          width: 1,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "text2",
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: "QuicksandSemiBold",
                                                color: Color(0xFFFFFFFF))),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text("gggg",
                                            // plansList[_current][1]
                                            //     .durationtype
                                            //     .toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "QuicksandSemiBold",
                                                color: Color(0xFFFFFFFF))),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Text("ffff",
                                            // '${plansList[_current][1].price} ${plansList[_current][1].currency}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "QuicksandSemiBold",
                                                color: Color(0xFFFFFFFF))),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: 118,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: MainColor.colorWhite,
                                        border: Border.all(
                                          color: const Color(0xFFFD6180),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("tttt",
                                            // plansList[_current][2]
                                            //     .duration
                                            //     .toString(),
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: "QuicksandSemiBold",
                                                color: Color(0xFFA3A3A3))),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text("kkk",
                                            // plansList[_current][2]
                                            //     .durationtype
                                            //     .toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "QuicksandSemiBold",
                                                color: Color(0xFFA3A3A3))),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "kkk",
                                            // '${plansList[_current][2].price} ${plansList[_current][2].currency}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "QuicksandSemiBold",
                                                color: Color(0xFFA3A3A3))),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "kkk",
                                            // divideStrings(
                                            //     plansList[_current][2]
                                            //         .price
                                            //         .toString(),
                                            //     plansList[_current][2]
                                            //         .duration
                                            //         .toString()),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "QuicksandSemiBold",
                                                color: Color(0xFFA3A3A3))),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      // setState(() {
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
                      }
                // );
                    // },
                    // height: 400,
                    // aspectRatio: 16 / 9,
                    // viewportFraction: 0.95,
                    // initialPage: 0,
                    // enableInfiniteScroll: true,
                    // reverse: false,
                    // autoPlay: true,
                    // autoPlayInterval: Duration(seconds: 3),
                    // autoPlayAnimationDuration: Duration(milliseconds: 800),
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    // enlargeCenterPage: true,
                    // enlargeFactor: 0.0,
                    // scrollDirection: Axis.horizontal,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
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
class MainPlans {
  int? id;
  String? type;
  String? title;
  String? duration;
  String? durationtype;
  String? price;
  String? currency;
  String? description;
  String? createdAt;
  String? updatedAt;

  MainPlans(
      {this.id,
      this.type,
      this.title,
      this.duration,
      this.durationtype,
      this.price,
      this.currency,
      this.description,
      this.createdAt,
      this.updatedAt});

  MainPlans.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    title = json['title'];
    duration = json['duration'];
    durationtype = json['durationtype'];
    price = json['price'];
    currency = json['currency'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['title'] = title;
    data['duration'] = duration;
    data['durationtype'] = durationtype;
    data['price'] = price;
    data['currency'] = currency;
    data['description'] = description;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
