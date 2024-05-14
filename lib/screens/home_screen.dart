import 'package:carousel_slider/carousel_slider.dart';
import 'package:darkmodeapp/screens/profile_verification.dart';
import 'package:darkmodeapp/screens/swipe_tinder_cards.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/body_container.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int activePage = 0;
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  late MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _names = ["Red", "Blue", "Green", "Yellow", "Orange"];
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange
  ];

  @override
  void initState() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(text: _names[i], color: _colors[i]),
          likeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Liked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Nope ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          superlikeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Superliked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                bottom: false,
                top: true,
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
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border:
                                          Border.all(color: Color(0xffE7E7E7)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
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
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.75,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.90,
                                        decoration: BoxDecoration(
                                            color: MainColor.colorWhite,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Image.asset(
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
                                                height: 1.h,
                                              ),
                                              Text(
                                                'Premium Subscription',
                                                style: GoogleFonts.quicksand(
                                                  textStyle: TextStyle(
                                                    color: Color(0xffff0000),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18.sp,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                'Lorem Ipsum is simply dummy text of the \nprinting and typesetting',
                                                style: GoogleFonts.quicksand(
                                                  textStyle: TextStyle(
                                                    color: Color(0xff2b2b2b),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 2.h,
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
                                                height: 2.h,
                                              ),
                                              _buildRow("Unlimited Likes"),
                                              _buildRow("New Feature Added"),
                                              _buildRow("Exciting Updates"),
                                              _buildRow("Exclusive Access"),
                                              _buildRow("Enhanced Performance"),
                                              _buildRow("Special Offer Inside"),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    Get.to(
                                                        ProfileVerificationScreen());
                                                  },
                                                  child: buttonWidget(
                                                      6, 80, "Subscribe"))
                                            ],
                                          ),
                                        ));
                                  },
                                );
                              },
                              child: Image.asset(
                                "assets/icons/filter.png",
                                height: 2.5.h,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 550,
                                child: SwipeCards(
                                  matchEngine: _matchEngine,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        alignment: Alignment.center,
                                        color: _swipeItems[index].content.color,
                                        child: Text(
                                          _swipeItems[index].content.text,
                                          style: TextStyle(fontSize: 100),
                                        ),
                                      ),
                                    );
                                  },
                                  onStackFinished: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("Stack Finished"),
                                      duration: Duration(milliseconds: 500),
                                    ));
                                  },
                                  itemChanged: (SwipeItem item, int index) {
                                    print(
                                        "item: ${item.content.text}, index: $index");
                                  },
                                  upSwipeAllowed: true,
                                  fillSpace: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
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
                              "assets/logo/verify.png",
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
                        rowWidget(
                            "assets/icons/child.png",
                            "Doesn’t have Child",
                            "assets/icons/calender.png",
                            "Marriage in 1-2 Years"),
                        rowWidget("assets/icons/married.png", "Never Married",
                            "assets/icons/age.png", "18 Year"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
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
        style: GoogleFonts.quicksand(
          textStyle: TextStyle(
            color: Color(0xff2b2b2b),
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
      ),
    ],
  );
}
