// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:darkmodeapp/models/app_network.dart';
import 'package:darkmodeapp/models/profile_public_user.dart';
import 'package:darkmodeapp/screens/user_multi_image_screen.dart';
import 'package:darkmodeapp/utils/main_color.dart';
import 'package:darkmodeapp/utils/user_matched.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'dart:math' as math;


//ignore: must_be_immutable
class Swipetindercards extends StatefulWidget {
  Function? onupdate;
  Users? users;
  int? length;
  PublicProfileUsers? response;

  // String? name;

  Swipetindercards(
      {Key? key,
      this.onupdate,
      required this.users,
      required this.length,
      required this.response})
      : super(key: key);

  @override
  _SwipetindercardsState createState() => _SwipetindercardsState();
}

class _SwipetindercardsState extends State<Swipetindercards> {
  final List<SwipeItem> _swipeItems = <SwipeItem>[];
  String userId = "";
  String dislikeUser = "";

  List<ProfilePic> imagesList = [
    // ProfilePic(images: 'assets/images/demo_image.jpg'),
    // ProfilePic(images: 'assets/images/demo_image2.jpg'),
    // ProfilePic(images: 'assets/images/demo_image3.jpeg'),
    // ProfilePic(images: 'assets/images/demo_image_5.jpg'),
    // ProfilePic(images: 'assets/images/demo_image.jpg'),
    // ProfilePic(images: 'assets/images/demo_image2.jpg'),
    // ProfilePic(images: 'assets/images/demo_image3.jpeg'),
    // ProfilePic(images: 'assets/images/demo_image_5.jpg'),
  ];
  MatchEngine? _matchEngine;
  bool finished = false;
  List<String> images = [];
  String luvId = "";
  bool showTier = false;

  int newIndex = 0;

  @override
  void initState() {
    for (int i = 0; i < widget.length!; i++) {
      imagesList.add(ProfilePic(images: 'assets/images/demo_image.jpg'));
    }
    for (int i = 0; i < imagesList.length; i++) {
      _swipeItems.add(SwipeItem(
          content: imagesList[i].images,
          likeAction: () async {
            //========================Like is here===================
            SharedPreferences prefs = await SharedPreferences.getInstance();
            if (widget.users!.likedyouStatus == "1") {
              if (mounted) {
                matchDialogueBox(
                    context,
                    widget.users!.firstname.toString(),
                    widget.users!.profileimages!.isEmpty
                        ? ''
                        : widget.users!.profileimages![0].images.toString(),
                    prefs.getString('user_image').toString(),
                    widget.users!.id.toString());
              }
            }
            userId = userId + widget.users!.id.toString() + ",";
            prefs.setString('receiver_id', userId);
            setState(() {});
          },
          nopeAction: () async {
            dislikeUser = dislikeUser + widget.users!.id.toString() + ",";
            SharedPreferences prefs = await SharedPreferences.getInstance();
            debugPrint('disliked user>>${dislikeUser}');
            prefs.setString('dislike_user_id', dislikeUser);
            setState(() {});
          },
          superlikeAction: () {
            setState(() {});
          },
          onSlideUpdate: (SlideRegion? region) async {}));
    }
    pref();
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  int _selectedurrent = 0;

  // int _current = 0;

  pref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    showTier = prefs.getBool('show_tier')!;
    prefs.setString('sender_id', widget.users!.id.toString());
    prefs.setString('like_you_status', widget.users!.likedyouStatus.toString());
    prefs.setString(
        'receiver_image', widget.users!.profileimages![0].images.toString());
    prefs.setString('send_love_username',
        '${widget.users!.firstname} ${widget.users!.lastname}');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 620,
      width: MediaQuery.of(context).size.width,
      child: finished == true
          ? const SizedBox.shrink()
          : SwipeCards(
              matchEngine: _matchEngine!,
              itemBuilder: (BuildContext context, int index) {
                return widget.users!.profileimages!.isEmpty
                    ? Container(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/dumy_error_image.jpg',
                            width: double.infinity,
                            height: 620,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          if (widget.users!.profileimages!.length < 0) {
                          } else if (widget.length! < 0) {
                          } else if (widget.users!.profileimages![0].images ==
                              null) {
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        UserMultipleImagesScreen(
                                          users: widget.users,
                                        )));
                          }
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(12)),
                            child: Stack(
                              children: [
                                widget.users!.profileimages!.isNotEmpty
                                    ? widget.length! > 0
                                        ? widget.users!.profileimages![0]
                                                    .images !=
                                                null
                                            ? ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: AppNetworkImage(
                                                  width: double.infinity,
                                                  height: 620,
                                                  image: widget.users!
                                                      .profileimages![0].images
                                                      .toString(),
                                                  fit: BoxFit.cover,
                                                  errorWidget: Image.asset(
                                                    'assets/images/demo_image2.jpg',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              )
                                            : const SizedBox.shrink()
                                        : const SizedBox.shrink()
                                    : const SizedBox.shrink(),
                                widget.response!.status == true
                                    ? Positioned(
                                        // top: _current == 4 ? -12 : -30,
                                        // right: _current == 4 ? -10 : -35,
                                        top: widget.users!.tierstatus ==
                                                "Diamond"
                                            ? -30
                                            : 15,
                                        right: widget.users!.tierstatus ==
                                                "Diamond"
                                            ? -35
                                            : -27,
                                        child: widget.users!.tierstatus ==
                                                "Diamond"
                                            ? Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 30, top: 25),
                                                child: Image.asset(
                                                  'assets/images/diamond_high_quality.png',
                                                  height: 70,
                                                  width: 70,
                                                ),
                                              )
                                            : Transform.rotate(
                                                angle: 50 * math.pi / 180,
                                                child: FittedBox(
                                                  child: Container(
                                                    height: 25,
                                                    width: 100,
                                                    color: widget.users!
                                                                .tierstatus
                                                                .toString() ==
                                                            "Bronze"
                                                        ? const Color(
                                                            0xFFCD7F32)
                                                        : widget.users!
                                                                    .tierstatus
                                                                    .toString() ==
                                                                "Silver"
                                                            ? const Color(
                                                                0xFFC8C8C8)
                                                            : widget.users!
                                                                        .tierstatus
                                                                        .toString() ==
                                                                    "Gold"
                                                                ? const Color(
                                                                    0xFFFDD052)
                                                                : widget.users!
                                                                            .tierstatus
                                                                            .toString() ==
                                                                        "Platinum"
                                                                    ? const Color(
                                                                        0xFFF1F1F1)
                                                                    : const Color(
                                                                        0xFFCD7F32),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      widget.users!.tierstatus
                                                                  .toString() ==
                                                              ""
                                                          ? "Bronze"
                                                          : widget
                                                              .users!.tierstatus
                                                              .toString(),
                                                      style: TextStyle(
                                                          color: widget.users!
                                                                      .tierstatus
                                                                      .toString() ==
                                                                  ""
                                                              ? MainColor
                                                                  .colorWhite
                                                              : MainColor
                                                                  .colorBlack,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              "QuicksandBold"),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                      )
                                    : const SizedBox.shrink()
                              ],
                            )));
              },
              onStackFinished: () async {
                finished = true;
                widget.onupdate!(0);
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString("sender_id", "null");
                setState(() {});
              },
              itemChanged: (SwipeItem item, int index) async {
                _selectedurrent = index;
                widget.onupdate!(_selectedurrent);
                SharedPreferences prefs = await SharedPreferences.getInstance();

                prefs.setString(
                    'sender_id',
                    widget.response!.data!.users![_selectedurrent].id
                        .toString());
                prefs.setString('send_love_username',
                    "${widget.response!.data!.users![_selectedurrent].firstname.toString()} ${widget.response!.data!.users![_selectedurrent].lastname.toString()}");

                prefs.setString(
                    'like_you_status',
                    widget
                        .response!.data!.users![_selectedurrent].likedyouStatus
                        .toString());
                prefs.setString(
                    'receiver_image',
                    widget.response!.data!.users![_selectedurrent]
                        .profileimages![0].images
                        .toString());

                setState(() {});
              },
              leftSwipeAllowed: true,
              rightSwipeAllowed: true,
              upSwipeAllowed: true,
              fillSpace: true,
            ),
    );
  }
}

class Content {
  String? text;
  Color? color;

  Content({required this.text, required this.color});
}

class ProfilePic {
  String? images;

  ProfilePic({this.images});
}
