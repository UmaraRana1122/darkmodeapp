import 'dart:ui';

import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/widgets/messages_widget.dart';
import 'package:darkmodeapp/widgets/my_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  TextEditingController _messageController = TextEditingController();
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyInkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                "assets/logo/arrow.png",
                                height: 22,
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Messages',
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp),
                                  ),
                                ),
                                Text(
                                  '11 Unread Messages',
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.sp),
                                  ),
                                ),
                              ],
                            ),
                            Spacer()
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xff5a5a5a),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              messagesWidget("Hannah", "2",
                                  "Hi, Hello, I would like......"),
                              Divider(),
                              readmessageWidget("assets/images/henna.png",
                                  "Jennifer", "How was your day?"),
                              Divider(),
                              messagesWidget(
                                  "Liza", "5", "Hi, I would like......"),
                              Divider(),
                              messagesWidget(
                                  "Liza", "5", "Hi, I would like......"),
                              Divider(),
                              readmessageWidget("assets/images/herry.png",
                                  "Jennifer", "How was your day?"),
                              Divider(),
                              messagesWidget(
                                  "Liza", "5", "Hi, I would like......"),
                              Divider(),
                              messagesWidget(
                                  "Liza", "5", "Hi, I would like......"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Start Conversation',
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w600,
                                fontSize: 17.sp),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CustomColumn(
                                  imagePath: "assets/images/henna.png",
                                  text: "Liza"),
                              CustomColumn(
                                  imagePath: "assets/images/herry.png",
                                  text: "John"),
                              CustomColumn(
                                  imagePath: "assets/images/maya.png",
                                  text: "Alice"),
                              CustomColumn(
                                  imagePath: "assets/images/henna.png",
                                  text: "Bob"),
                              CustomColumn(
                                  imagePath: "assets/images/maya.png",
                                  text: "Emma"),
                              CustomColumn(
                                  imagePath: "assets/images/herry.png",
                                  text: "Michael"),
                              CustomColumn(
                                  imagePath: "assets/images/maya.png",
                                  text: "Sarah"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Divider(),
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

class CustomColumn extends StatelessWidget {
  final String imagePath;
  final String text;

  const CustomColumn({
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Text(
            text,
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                color: Color(0xffA3A3A3),
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 2.5.h,
            backgroundColor: MainColor.heartRed,
            child: CircleAvatar(
              radius: 2.3.h,
              backgroundColor: Color(0xff5a5a5a),
              child: CircleAvatar(
                radius: 1.9.h,
                backgroundColor: MainColor.heartRed,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
