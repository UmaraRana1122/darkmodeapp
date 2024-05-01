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
        floatingActionButton: DiamondFAB(
          onPressed: () {
            print('FAB Pressed');
          },
          color: Colors.white,
          imagePath: 'assets/icons/logo1.png',
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                                                backgroundColor:
                                                    activePage == index
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
                              "assets/icons/tick.png",
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
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22))),
            height: 7.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                columx("assets/icons/home.png", 0),
                columx("assets/icons/match.png", 1),
                SizedBox(
                  width: 20.w,
                ),
                columx("assets/icons/message.png", 2),
                columx("assets/icons/home.png", 3),
              ],
            ),
          ),
        ]));
  }

  Widget columx(icon, i) {
    return InkWell(
      onTap: () => ontapped(i),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 3.h,
            color: selectedIndex == i ? Colors.red : Colors.black45,
          ),
        ],
      ),
    );
  }
}

class DiamondPainter extends CustomPainter {
  final Color color;

  DiamondPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    final double width = size.width;
    final double height = size.height;

    final Path path = Path()
      ..moveTo(width * 0.5, 0)
      ..lineTo(width, height * 0.5)
      ..lineTo(width * 0.5, height)
      ..lineTo(0, height * 0.5)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DiamondFAB extends StatelessWidget {
  final VoidCallback onPressed;
  final String imagePath;
  final Color color;
  final double size;

  const DiamondFAB({
    required this.onPressed,
    required this.imagePath,
    required this.color,
    this.size = 56,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ClipPath(
        clipper: DiamondClipper(),
        child: Material(
          color: color,
          child: InkWell(
            onTap: onPressed,
            child: Center(
              child: Image.asset(
                imagePath,
                height: size * 0.5,
                width: size * 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DiamondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width * 0.5, 0)
      ..lineTo(size.width, size.height * 0.5)
      ..lineTo(size.width * 0.5, size.height)
      ..lineTo(0, size.height * 0.5)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
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
