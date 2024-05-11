import 'package:carousel_slider/carousel_slider.dart';
import 'package:darkmodeapp/widgets/body_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int activePage = 0;

  void ontapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<String> imagePaths = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
  ];
  late List<Widget> pages;

  GlobalKey<CarouselSliderState> sliderKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    pages = List.generate(
        imagePaths.length,
        (index) => ImagePlaceholder(
              imagePath: imagePaths[index],
            ));
  }

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
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/logo1.png",
                          height: 4.h,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Color(0xffE7E7E7)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  '324.6',
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: .4.h,
                            ),
                            Text(
                              '0.125',
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: Color(0xff6FC02F),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/icons/vivid1.png",
                          height: 2.5.h,
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Image.asset(
                          "assets/icons/filter.png",
                          height: 2.5.h,
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: 100.w,
                          height: 70.h,
                          child: PageView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: imagePaths.length,
                              itemBuilder: (context, index) {
                                return pages[index];
                              }),
                        ),
                        //page indicator
                        Positioned(
                          right: 0,
                          top: 250,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  pages.length,
                                  (index) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                            radius: 4,
                                            backgroundColor: activePage == index
                                                ? Colors.red
                                                : Colors.white),
                                      )),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Jessica M",
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Image.asset(
                          "assets/icons/verify.png",
                          height: 2.h,
                        ),
                        Spacer(),
                        Text(
                          "17 KM Away",
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                    rowWidget("assets/icons/height.png", "165 CM (5’ 55”)",
                        "assets/icons/abroad.png", "Will move abroad"),
                    rowWidget("assets/icons/child.png", "Doesn’t have Child",
                        "assets/icons/calender.png", "Marriage in 1-2 Years"),
                    rowWidget("assets/icons/married.png", "Never Married",
                        "assets/icons/age.png", "18 Year"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}

class ImagePlaceholder extends StatelessWidget {
  final String? imagePath;
  const ImagePlaceholder({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath!,
    );
  }
}
