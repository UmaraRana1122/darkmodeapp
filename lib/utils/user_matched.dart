import 'package:darkmodeapp/models/app_network.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;


//ignore: must_be_immutable
class UserMatched extends StatefulWidget {
  String username;
  String userImage;
  String myImage;
  String userId;

  UserMatched(
      {super.key,
      required this.username,
      required this.userImage,
      required this.myImage,
      required this.userId});

  @override
  State<UserMatched> createState() => _UserMatchedState();
}

class _UserMatchedState extends State<UserMatched>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // final player = AudioPlayer();
    // player.play(AssetSource('sound.wav'));
    // _animationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 500),
    // );

    _animation =
        Tween<double>(begin: 1.0, end: 1.2).animate(_animationController);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      }
    });
    _animationController.forward();
    // this.widget.update();
    // Future.delayed(Duration.zero, () {
    //   likeSendApi();
    // });
  }

  String receiverId = '';
  String finalId = '';

  // likeSendApi() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   receiverId = prefs.getString('receiver_id').toString();
  //   if (receiverId == "") {
  //   } else {
  //     finalId = receiverId.substring(0, receiverId.length - 1);
  //     SendLikesAPi().likesSend(finalId);
  //   }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          const Text(
            'It\'s a Match !',
            style: TextStyle(
                fontFamily: "MikadoBold",
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 40),
          ),
          const SizedBox(
            height: 40,
          ),
          ScaleTransition(
            scale: _animation,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    children: [
                      // Expanded(
                      //   child: Transform.rotate(
                      //     angle: 40 * math.pi / -500,
                      //     child: Container(
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(8),
                      //           border:
                      //               Border.all(color: Colors.white, width: 5)),
                      //         image: widget.myImage,
                      //         fit: BoxFit.cover,
                      //         height: 200,
                      //         width: 200,
                      //         errorWidget: Image.asset(
                      //           'assets/images/dumy_error_image.jpg',
                      //           fit: BoxFit.cover,
                      //           height: 200,
                      //           width: 200,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   width: 30,
                      // ),
                      // Expanded(
                      //   child: Transform.rotate(
                      //     angle: 40 * math.pi / 500,
                      //     child: Container(
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(8),
                      //           border:
                      //               Border.all(color: Colors.white, width: 5)),
                      //       child: AppNetworkImage(
                      //         image: widget.userImage,
                      //         fit: BoxFit.cover,
                      //         height: 200,
                      //         width: 200,
                      //         errorWidget: Image.asset(
                      //           'assets/images/dumy_error_image.jpg',
                      //           fit: BoxFit.cover,
                      //           height: 200,
                      //           width: 200,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    'assets/images/1080px-Logo.png',
                    height: 150,
                    width: 150,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'You and ${widget.username} \n have liked each other',
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: "QuicksandSemiBold",
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22),
          ),
          const SizedBox(
            height: 20,
          ),
          // AppButton(
          //   padding: const EdgeInsets.only(left: 30, right: 30),
          //   onPressed: () {
          //     UpdateMatchStatus().match();
          //     CustomNavigator.pushNavigate(
          //         context,
          //         ChatViewScreen(
          //             name: widget.username,
          //             img: widget.userImage,
          //             receiverId: widget.userId,
          //             oncallback: () {}));
          //   },
          //   name: 'SEND MESSAGE',
          //   textStyle: const TextStyle(
          //       fontFamily: "QuicksandSemiBold",
          //       color: Colors.white,
          //       fontWeight: FontWeight.w600,
          //       fontSize: 18),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // AppButton(
          //   padding: const EdgeInsets.only(left: 30, right: 30),
          //   onPressed: () {
          //     UpdateMatchStatus().match();
          //     Navigator.pop(context);
          //   },
          //   name: 'KEEP SWIPING',
          //   buttonColor: Colors.white,
          //   borderColor: Colors.black,
          //   textStyle: const TextStyle(
          //       fontFamily: "QuicksandSemiBold",
          //       color: Colors.black,
          //       fontWeight: FontWeight.w600,
          //       fontSize: 18),
          // ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

Future<void> matchDialogueBox(BuildContext context, String userName,
    String userImage, String myImage, String userId) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: const EdgeInsets.only(left: 0, right: 0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(13.0))),
        backgroundColor: MainColor.colorBlack,
        title: UserMatched(
          username: userName,
          userImage: userImage,
          myImage: myImage,
          userId: userId,
        ),
      );
    },
  );
}
