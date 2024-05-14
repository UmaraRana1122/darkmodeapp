import 'package:darkmodeapp/screens/upload.dart';
import 'package:darkmodeapp/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DOBScreen extends StatefulWidget {
  const DOBScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DOBScreen> createState() => _DOBScreenState();
}

class _DOBScreenState extends State<DOBScreen> {
  late int day;
  late int month;
  late int year;
  String selectedField = '';

  @override
  void initState() {
    super.initState();
    // Initialize the date with current date
    DateTime now = DateTime.now();
    day = now.day;
    month = now.month;
    year = now.year;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey.shade800,
                    Colors.grey.shade900,
                    Colors.grey.shade900,
                  ]),
            ),
            child: SafeArea(
              bottom: false,
              child: Column(children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(Icons.arrow_back_ios_new),
                    )),
                Center(child: Image.asset("assets/icons/logo1.png")),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Registeration',
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            width: 100.w,
                            height: 71.h,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                ),
                                color: Color(0xff5a5a5a)),
                            child: Column(children: [
                              SizedBox(height: 3.h),
                              Container(
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color(0xff676767)),
                                  child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(children: [
                                        Text(
                                          'Select Your Date Of Birth ',
                                          style: GoogleFonts.quicksand(
                                            textStyle: TextStyle(
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17.sp),
                                          ),
                                        ),
                                        SizedBox(height: 1.5.h),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border:
                                                Border.all(color: Colors.black),
                                          ),
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  _selectDate(context, 'day');
                                                },
                                                child: Text(
                                                  day == null
                                                      ? 'Day'
                                                      : 'Day: $day',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 1,
                                                height: 37,
                                                color: Colors
                                                    .white, // Adjust color as needed
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _selectDate(context, 'month');
                                                },
                                                child: Text(
                                                  month == null
                                                      ? 'Month'
                                                      : 'Month: $month',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Container(
                                                width: 1,
                                                height: 37,
                                                color: Colors
                                                    .white, // Adjust color as needed
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _selectDate(context, 'year');
                                                },
                                                child: Text(
                                                  year == null
                                                      ? 'Year'
                                                      : 'Year: $year',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        InkWell(
                                            onTap: () {
                                              Get.to(UploadScreen());
                                            },
                                            child: buttonWidget(
                                                .7.h, 20.7.w, "Next")),
                                      ]))),
                            ])))
                  ],
                ),
              ]),
            )));
  }

  dialogSuccess(BuildContext context, String msg) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (_) => AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        contentPadding: const EdgeInsets.only(top: 10.0),
        content: SizedBox(
          width: 300.0,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "assets/images/img_success.png",
                          height: 81,
                          width: 77,
                        ),
                        const SizedBox(
                          height: 31,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            msg,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w300,
                                fontFamily: "QuicksandLight"),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, String field) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(year, month, day),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        switch (field) {
          case 'day':
            day = picked.day;
            break;
          case 'month':
            month = picked.month;
            break;
          case 'year':
            year = picked.year;
            break;
        }
      });
    }
  }
}
