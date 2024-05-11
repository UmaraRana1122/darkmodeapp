import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoWidget extends StatefulWidget {
  final String text;

  const InfoWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _InfoWidgetState createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.text, // Use the text passed through the constructor
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              Spacer(),
              Image.asset(
                "assets/logo/arrow1.png",
                height: 18,
              )
            ],
          ),
          Divider(
            color: Color(0xffA3A3A3),
          ),
        ],
      ),
    );
  }
}
