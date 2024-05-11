// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:darkmodeapp/models/app_network.dart';
import 'package:darkmodeapp/models/profile_public_user.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//ignore: must_be_immutable
class UserMultipleImagesScreen extends StatefulWidget {
  Users? users;

  UserMultipleImagesScreen({Key? key, required this.users}) : super(key: key);

  @override
  State<UserMultipleImagesScreen> createState() =>
      _UserMultipleImagesScreenState();
}

class _UserMultipleImagesScreenState extends State<UserMultipleImagesScreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.colorWhite,
      // appBar: const MyAppbar(
      //     title: "VIVID",
      //     titleTextStyle: TextStyle(
      //         fontSize: 28,
      //         fontWeight: FontWeight.w900,
      //         fontFamily: "MikadoBold",
      //         color: MainColor.heartRed)),
      //appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CarouselSlider.builder(
                        itemCount: widget.users!.profileimages!.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: AppNetworkImage(
                            height: 620,
                            width: MediaQuery.of(context).size.width,
                            image: widget
                                .users!.profileimages![itemIndex].images
                                .toString(),
                            fit: BoxFit.cover,
                            errorWidget: Image.asset(
                              'assets/images/demo_image2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        options: CarouselOptions(
                            height: 620,
                            scrollDirection: Axis.vertical,
                            autoPlay: false,
                            scrollPhysics:
                                widget.users!.profileimages!.length > 1
                                    ? const AlwaysScrollableScrollPhysics()
                                    : const NeverScrollableScrollPhysics(),
                            pauseAutoPlayInFiniteScroll: true,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                                setState(() {});
                              });
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: widget.users!.profileimages!.length > 1
                              ? AnimatedSmoothIndicator(
                                  axisDirection: Axis.vertical,
                                  activeIndex: _current,
                                  count: widget.users!.profileimages!.length,
                                  effect: const ScaleEffect(
                                    scale: 1.8,
                                    dotHeight: 8,
                                    dotWidth: 8,
                                    dotColor: Color(0xFFFFFFFF),
                                    activeDotColor: Color(0xFFFFFFFF),
                                    activePaintStyle: PaintingStyle.stroke,
                                  ),
                                )
                              : const SizedBox.shrink()),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20, top: 20),
                  child: Row(
                    children: [
                      Text(widget.users!.firstname.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "QuicksandBold",
                          )),
                      const SizedBox(
                        width: 13,
                      ),
                      widget.users!.profileVerifyStatus == "Pending"
                          ? Image.asset(
                              "assets/images/grey_tick_verify.png",
                              height: 23,
                              width: 23,
                            )
                          : Image.asset(
                              "assets/images/img_blue_verfiy_tick.png",
                              height: 23,
                              width: 23,
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: MainColor.colorWhite,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              //  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Dashboard(selectedPage: 0,)), (route) => false);
              setState(() {});
            },
            child: Image.asset(
              "assets/images/back_arrow.png",
              height: 25,
              width: 25,
            ),
          ),
          const Spacer(),
          Image.asset('assets/images/VIVID_text.png', height: 34, width: 69),
          const Spacer(),
        ],
      ),
    );
  }
}

class ProfileModel2 {
  final String profileImage;

  ProfileModel2({
    required this.profileImage,
  });
}
