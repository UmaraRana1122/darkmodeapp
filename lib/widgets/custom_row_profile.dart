import 'package:flutter/material.dart';

class CustomRowItem extends StatelessWidget {
  final String imageAsset;
  final String text;
  final Widget pageRoute;

  const CustomRowItem({
    Key? key,
    required this.imageAsset,
    required this.text,
    required this.pageRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 43,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color(0xff555555),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xffCCCCCC))),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pageRoute),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Image.asset(
                  imageAsset,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    color: Color(0xFFa3a3a3),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "QuicksandMedium",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
