// // ignore_for_file: empty_catches, file_names, prefer_typing_uninitialized_variables

// import 'dart:developer';

// import 'package:darkmodeapp/models/gallery_list.dart';
// import 'package:darkmodeapp/models/profile_public_user.dart';
// import 'package:darkmodeapp/models/profile_user.dart';
// import 'package:darkmodeapp/screens/swipe_tinder_cards.dart';
// import 'package:darkmodeapp/utils/main_color.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:pretty_http_logger/pretty_http_logger.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:url_launcher/url_launcher.dart';

// import 'dart:convert' as convert;


// import '../utils/utility.dart';

// class HomemainScreen extends StatefulWidget {
//   const HomemainScreen({Key? key}) : super(key: key);

//   @override
//   HomemainScreenState createState() => HomemainScreenState();
// }

// class HomemainScreenState extends State<HomemainScreen>
//     with WidgetsBindingObserver {
//   PublicProfileUsers responsemain = PublicProfileUsers();
//   ProfileUser profileResponse = ProfileUser();
//   String? luv;
//   String? uniqueId;

//   List<LifeStyleTabs> lifeStyleList = [];

//   bool loading = false;
//   var userAge;
//   int? year;
//   int? date;
//   int? month;
//   List<Users> publicProfilesList = [];
//   String? relationsgoals;
//   List<Interests> interests = [];
//   String receiverId = "";
//   var scrollcontroller = ScrollController();
//   bool isLoading = false;

//   // int page = 1;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
//   int _selectedurrent = 0;
//   int pageindex = 0;
//   int count = 1;
//   bool showBody = false;
//   String finalId = "";

//   String dislikeID = '';
//   String finalDislikeID = '';

//   // onUpdate(int index) async {
//   //   _selectedurrent = index;
//   //   if (_selectedurrent == 0) {
//   //     showBody = true;
//   //   } else {}
//   //   SharedPreferences prefs = await SharedPreferences.getInstance();
//   //   receiverId = prefs.getString('receiver_id').toString();
//   //   finalId =
//   //       receiverId == "" ? "" : receiverId.substring(0, receiverId.length - 1);

//   //   _selectedurrent == 5 ? SendLikesAPi().likesSend(finalId) : '';
//   //   pageindex = pageindex + 1;
//   //   if (pageindex == responsemain.data!.users!.length) {
//   //     count = count + 1;
//   //     publicProfilesApi(count);
//   //     setState(() {});
//   //   }
//   //   setState(() {});
//   // }

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//     Future.delayed(Duration.zero, () {
//       allApis();
//     });
//   }

//   allApis() {
//     sharedPref();
//     viewProfile();
//     myGalleryListApi();

//     setState(() {});
//   }

//   sharedPref() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     receiverId = prefs.getString('receiver_id').toString();
//     dislikeID = prefs.getString('dislike_user_id').toString();
//     publicProfilesApi(1);
//     setState(() {});
//   }

//   bool searching = false;

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     // TODO: implement didChangeAppLifecycleState
//     super.didChangeAppLifecycleState(state);
//     if (state == AppLifecycleState.resumed) {
//       // online
//       debugPrint('App resumed>>>');
//       // setStatus("Online");
//     } else if (state == AppLifecycleState.inactive) {
//       debugPrint('App killed or inactive>>>');
//     } else if (state == AppLifecycleState.detached) {
//       debugPrint('App detached>>>');
//     } else if (state == AppLifecycleState.paused) {
//       debugPrint('App paused>>>');
//     } else {
//       // offline
//       debugPrint('App in background>>');
//       // setStatus("Offline");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xFFFFFFFF),
//         appBar: appBar(context),
//         key: _scaffoldKey,
//         body: publicProfilesList.isEmpty
//             // ? Center(
//             //     child: Padding(
//             //     padding: const EdgeInsets.only(left: 20, right: 20),
//             //     child: Text(
//             //       'Currently there are no nearby profile please check back later',
//             //       textAlign: TextAlign.center,
//             //       style: TextStyle(
//             //           fontSize: 12,
//             //           fontWeight: FontWeight.w600,
//             //           fontFamily: "QuicksandSemiBold",
//             //           foreground: Paint()
//             //             ..shader = const LinearGradient(
//             //               colors: <Color>[
//             //                 MainColor.colorFD6180,
//             //                 MainColor.colorFE8155,
//             //                 //add more color here.
//             //               ],
//             //             ).createShader(
//             //                 const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
//             //     ),
//             //   ))
//             ?SingleChildScrollView(
//                 child: responsemain.status == true
//                     ? Column(
//                         children: [
//                           showBody
//                               ? Container(
//                                   padding: const EdgeInsets.only(top: 200),
//                                   alignment: Alignment.center,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       // Image.asset(
//                                       //   'assets/images/img_logo.png',
//                                       //   height: 150,
//                                       //   width: 150,
//                                       // ),
//                                       const Text('Finished No data',
//                                           style: TextStyle(
//                                             color: Color(0xFF000000),
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w500,
//                                             fontFamily: "QuicksandMedium",
//                                           )),
//                                     ],
//                                   ),
//                                 )
//                               : Padding(
//                                   padding:
//                                       const EdgeInsets.only(left: 8, right: 8),
//                                   child: Swipetindercards(
//                                     onupdate: onUpdate,
//                                     users: publicProfilesList[_selectedurrent],
//                                     length: responsemain.data!.users!.length,
//                                     response: responsemain,
//                                   ),
//                                 ),
//                           const SizedBox(
//                             height: 11,
//                           ),
//                           showBody
//                               ? const SizedBox.shrink()
//                               : Column(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 20, right: 20, bottom: 20),
//                                       child: Column(
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Text(
//                                                   '${capitalizeFirstLetter(publicProfilesList[_selectedurrent].firstname.toString())}, ${publicProfilesList[_selectedurrent].age.toString()}',
//                                                   style: const TextStyle(
//                                                     fontSize: 18,
//                                                     fontWeight: FontWeight.w600,
//                                                     fontFamily: "QuicksandBold",
//                                                   )),
//                                               const SizedBox(
//                                                 width: 13,
//                                               ),
//                                               publicProfilesList[
//                                                               _selectedurrent]
//                                                           .profileVerifyStatus ==
//                                                       "Pending"
//                                                   ? Image.asset(
//                                                       "assets/logo/verify.png",
//                                                       height: 23,
//                                                       width: 23,
//                                                     )
//                                                   : Image.asset(
//                                                       "assets/logo/verify.png",
//                                                       height: 23,
//                                                       width: 23,
//                                                     ),
//                                               const Spacer(),
//                                               Text(
//                                                   "${publicProfilesList[_selectedurrent].distance} Miles Away",
//                                                   style: const TextStyle(
//                                                     fontSize: 15,
//                                                     fontWeight: FontWeight.w700,
//                                                     fontFamily: "QuicksandBold",
//                                                   )),
//                                             ],
//                                           ),
//                                           const SizedBox(
//                                             height: 11,
//                                           ),
//                                           Row(
//                                             children: [
//                                               publicProfilesList[
//                                                               _selectedurrent]
//                                                           .height ==
//                                                       ""
//                                                   ? const SizedBox.shrink()
//                                                   : Expanded(
//                                                       child: Card(
//                                                       color: const Color(
//                                                           0xFFFFFFFF),
//                                                       elevation: 0,
//                                                       shape:
//                                                           const RoundedRectangleBorder(
//                                                         side: BorderSide(
//                                                           color:
//                                                               Color(0xFFEEEEEE),
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           topRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                         ), //<-- SEE HERE
//                                                       ),
//                                                       child: Container(
//                                                         margin: const EdgeInsets
//                                                             .only(
//                                                             top: 8,
//                                                             bottom: 8,
//                                                             right: 3,
//                                                             left: 10),
//                                                         child: Row(
//                                                           children: [
//                                                             SizedBox(
//                                                               height: 19.99,
//                                                               width: 16.42,
//                                                               child:
//                                                                   Image.asset(
//                                                                 "assets/logo/verify.png",
//                                                                 height: 16,
//                                                                 width: 16,
//                                                               ),
//                                                             ),
//                                                             const SizedBox(
//                                                               width: 10,
//                                                             ),
//                                                             Flexible(
//                                                               child: Text(
//                                                                   publicProfilesList[_selectedurrent]
//                                                                               .height ==
//                                                                           ""
//                                                                       ? "Not specified"
//                                                                       : publicProfilesList[
//                                                                               _selectedurrent]
//                                                                           .height
//                                                                           .toString(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   style:
//                                                                       const TextStyle(
//                                                                     fontSize:
//                                                                         12,
//                                                                     color: Color(
//                                                                         0xFF040404),
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .w500,
//                                                                     fontFamily:
//                                                                         "QuicksandMedium",
//                                                                   )),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     )),
//                                               publicProfilesList[
//                                                               _selectedurrent]
//                                                           .children ==
//                                                       ""
//                                                   ? const SizedBox.shrink()
//                                                   : Expanded(
//                                                       child: Card(
//                                                       color: const Color(
//                                                           0xFFFFFFFF),
//                                                       elevation: 0,
//                                                       shape:
//                                                           const RoundedRectangleBorder(
//                                                         side: BorderSide(
//                                                           color:
//                                                               Color(0xFFEEEEEE),
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           topLeft:
//                                                               Radius.circular(
//                                                                   5),
//                                                           bottomLeft:
//                                                               Radius.circular(
//                                                                   5),
//                                                         ), //<-- SEE HERE
//                                                       ),
//                                                       child: Container(
//                                                         margin: const EdgeInsets
//                                                             .only(
//                                                             top: 8,
//                                                             bottom: 8,
//                                                             right: 3,
//                                                             left: 10),
//                                                         child: Row(
//                                                           children: [
//                                                             SizedBox(
//                                                               height: 19.99,
//                                                               width: 16.42,
//                                                               child:
//                                                                   Image.asset(
//                                                                 "assets/logo/verify.png",
//                                                                 height: 16,
//                                                                 width: 16,
//                                                               ),
//                                                             ),
//                                                             const SizedBox(
//                                                               width: 10,
//                                                             ),
//                                                             Flexible(
//                                                               child: Text(
//                                                                   publicProfilesList[_selectedurrent]
//                                                                               .children ==
//                                                                           ""
//                                                                       ? "Not specified"
//                                                                       : publicProfilesList[
//                                                                               _selectedurrent]
//                                                                           .children
//                                                                           .toString(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   style:
//                                                                       const TextStyle(
//                                                                     fontSize:
//                                                                         12,
//                                                                     color: Color(
//                                                                         0xFF040404),
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .w500,
//                                                                     fontFamily:
//                                                                         "QuicksandMedium",
//                                                                   )),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     )),
//                                             ],
//                                           ),
//                                           Row(
//                                             children: [
//                                               relationsgoals == ''
//                                                   ? const SizedBox.shrink()
//                                                   : Expanded(
//                                                       child: Card(
//                                                       color: const Color(
//                                                           0xFFFFFFFF),
//                                                       elevation: 0,
//                                                       shape:
//                                                           const RoundedRectangleBorder(
//                                                         side: BorderSide(
//                                                           color:
//                                                               Color(0xFFEEEEEE),
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           topRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                         ), //<-- SEE HERE
//                                                       ),
//                                                       child: Container(
//                                                         margin: const EdgeInsets
//                                                             .only(
//                                                             top: 8,
//                                                             bottom: 8,
//                                                             right: 3,
//                                                             left: 10),
//                                                         child: Row(
//                                                           children: [
//                                                             SizedBox(
//                                                               height: 19.99,
//                                                               width: 16.42,
//                                                               child:
//                                                                   Image.asset(
//                                                                 "assets/logo/verify.png",
//                                                                 height: 19.99,
//                                                                 width: 16.42,
//                                                               ),
//                                                             ),
//                                                             const SizedBox(
//                                                               width: 11.06,
//                                                             ),
//                                                             Text(
//                                                                 relationsgoals ==
//                                                                         ''
//                                                                     ? 'Not specified'
//                                                                     : relationsgoals
//                                                                         .toString(),
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 style:
//                                                                     const TextStyle(
//                                                                   fontSize: 12,
//                                                                   color: Color(
//                                                                       0xFF040404),
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w500,
//                                                                   fontFamily:
//                                                                       "QuicksandMedium",
//                                                                 )),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     )),
//                                               publicProfilesList[
//                                                           _selectedurrent]
//                                                       .pet!
//                                                       .isNotEmpty
//                                                   ? Expanded(
//                                                       child: Card(
//                                                       color: const Color(
//                                                           0xFFFFFFFF),
//                                                       elevation: 0,
//                                                       shape:
//                                                           const RoundedRectangleBorder(
//                                                         side: BorderSide(
//                                                           color:
//                                                               Color(0xFFEEEEEE),
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           topRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                         ), //<-- SEE HERE
//                                                       ),
//                                                       child: Container(
//                                                         margin: const EdgeInsets
//                                                             .only(
//                                                             top: 8,
//                                                             bottom: 8,
//                                                             right: 3,
//                                                             left: 10),
//                                                         child: Row(
//                                                           children: [
//                                                             SizedBox(
//                                                               height: 19.99,
//                                                               width: 16.42,
//                                                               child: SvgPicture
//                                                                   .asset(
//                                                                 "assets/images/image_7.svg",
//                                                                 color: MainColor
//                                                                     .colorFD6180,
//                                                                 height: 19.99,
//                                                                 width: 16.42,
//                                                               ),
//                                                             ),
//                                                             const SizedBox(
//                                                               width: 11.06,
//                                                             ),
//                                                             Text(
//                                                                 publicProfilesList[
//                                                                         _selectedurrent]
//                                                                     .pet![0]
//                                                                     .name
//                                                                     .toString(),
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 style:
//                                                                     const TextStyle(
//                                                                   fontSize: 12,
//                                                                   color: Color(
//                                                                       0xFF040404),
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w500,
//                                                                   fontFamily:
//                                                                       "QuicksandMedium",
//                                                                 )),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ))
//                                                   : const SizedBox.shrink()
//                                             ],
//                                           ),
//                                           Row(
//                                             children: [
//                                               publicProfilesList[
//                                                               _selectedurrent]
//                                                           .smoking ==
//                                                       ''
//                                                   ? const SizedBox.shrink()
//                                                   : Expanded(
//                                                       child: Card(
//                                                       color: const Color(
//                                                           0xFFFFFFFF),
//                                                       elevation: 0,
//                                                       shape:
//                                                           const RoundedRectangleBorder(
//                                                         side: BorderSide(
//                                                           color:
//                                                               Color(0xFFEEEEEE),
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           topRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                         ), //<-- SEE HERE
//                                                       ),
//                                                       child: Container(
//                                                         margin: const EdgeInsets
//                                                             .only(
//                                                             top: 8,
//                                                             bottom: 8,
//                                                             right: 3,
//                                                             left: 10),
//                                                         child: Row(
//                                                           children: [
//                                                             SizedBox(
//                                                               height: 19.99,
//                                                               width: 16.42,
//                                                               child: SvgPicture
//                                                                   .asset(
//                                                                 "assets/images/image_9.svg",
//                                                                 color: MainColor
//                                                                     .colorFD6180,
//                                                                 height: 19.99,
//                                                                 fit:
//                                                                     BoxFit.fill,
//                                                                 width: 16.42,
//                                                               ),
//                                                             ),
//                                                             const SizedBox(
//                                                               width: 11.06,
//                                                             ),
//                                                             Text(
//                                                                 publicProfilesList[
//                                                                         _selectedurrent]
//                                                                     .smoking
//                                                                     .toString(),
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 style:
//                                                                     const TextStyle(
//                                                                   fontSize: 12,
//                                                                   color: Color(
//                                                                       0xFF040404),
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w500,
//                                                                   fontFamily:
//                                                                       "QuicksandMedium",
//                                                                 )),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     )),
//                                               publicProfilesList[
//                                                               _selectedurrent]
//                                                           .alcohol ==
//                                                       ''
//                                                   ? const SizedBox.shrink()
//                                                   : Expanded(
//                                                       child: Card(
//                                                       color: const Color(
//                                                           0xFFFFFFFF),
//                                                       elevation: 0,
//                                                       shape:
//                                                           const RoundedRectangleBorder(
//                                                         side: BorderSide(
//                                                           color:
//                                                               Color(0xFFEEEEEE),
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           topRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                         ), //<-- SEE HERE
//                                                       ),
//                                                       child: Container(
//                                                         margin: const EdgeInsets
//                                                             .only(
//                                                             top: 8,
//                                                             bottom: 8,
//                                                             right: 3,
//                                                             left: 10),
//                                                         child: Row(
//                                                           children: [
//                                                             SizedBox(
//                                                               height: 19.99,
//                                                               width: 16.42,
//                                                               child: SvgPicture
//                                                                   .asset(
//                                                                 "assets/images/image_8.svg",
//                                                                 color: MainColor
//                                                                     .colorFD6180,
//                                                                 height: 19.99,
//                                                                 width: 16.42,
//                                                               ),
//                                                             ),
//                                                             const SizedBox(
//                                                               width: 11.06,
//                                                             ),
//                                                             Text(
//                                                                 publicProfilesList[
//                                                                         _selectedurrent]
//                                                                     .alcohol
//                                                                     .toString(),
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 style:
//                                                                     const TextStyle(
//                                                                   fontSize: 12,
//                                                                   color: Color(
//                                                                       0xFF040404),
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w500,
//                                                                   fontFamily:
//                                                                       "QuicksandMedium",
//                                                                 )),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     )),
//                                             ],
//                                           ),
//                                           Row(
//                                             children: [
//                                               publicProfilesList[
//                                                           _selectedurrent]
//                                                       .dietary!
//                                                       .isEmpty
//                                                   ? const SizedBox.shrink()
//                                                   : Expanded(
//                                                       child: Card(
//                                                       color: const Color(
//                                                           0xFFFFFFFF),
//                                                       elevation: 0,
//                                                       shape:
//                                                           const RoundedRectangleBorder(
//                                                         side: BorderSide(
//                                                           color:
//                                                               Color(0xFFEEEEEE),
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           topRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                         ), //<-- SEE HERE
//                                                       ),
//                                                       child: Container(
//                                                         margin: const EdgeInsets
//                                                             .only(
//                                                             top: 8,
//                                                             bottom: 8,
//                                                             right: 3,
//                                                             left: 10),
//                                                         child: Row(
//                                                           children: [
//                                                             SizedBox(
//                                                               height: 19.99,
//                                                               width: 16.42,
//                                                               child: SvgPicture
//                                                                   .asset(
//                                                                 "assets/images/image_11.svg",
//                                                                 color: MainColor
//                                                                     .colorFD6180,
//                                                                 height: 19.99,
//                                                                 width: 16.42,
//                                                               ),
//                                                             ),
//                                                             const SizedBox(
//                                                               width: 11.06,
//                                                             ),
//                                                             Text(
//                                                                 publicProfilesList[
//                                                                         _selectedurrent]
//                                                                     .dietary![0]
//                                                                     .name
//                                                                     .toString(),
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 style:
//                                                                     const TextStyle(
//                                                                   fontSize: 12,
//                                                                   color: Color(
//                                                                       0xFF040404),
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w500,
//                                                                   fontFamily:
//                                                                       "QuicksandMedium",
//                                                                 )),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     )),
//                                               publicProfilesList[
//                                                           _selectedurrent]
//                                                       .workout!
//                                                       .isEmpty
//                                                   ? const SizedBox.shrink()
//                                                   : Expanded(
//                                                       child: Card(
//                                                       color: const Color(
//                                                           0xFFFFFFFF),
//                                                       elevation: 0,
//                                                       shape:
//                                                           const RoundedRectangleBorder(
//                                                         side: BorderSide(
//                                                           color:
//                                                               Color(0xFFEEEEEE),
//                                                         ),
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                           topRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   5),
//                                                         ), //<-- SEE HERE
//                                                       ),
//                                                       child: Container(
//                                                         margin: const EdgeInsets
//                                                             .only(
//                                                             top: 8,
//                                                             bottom: 8,
//                                                             right: 3,
//                                                             left: 10),
//                                                         child: Row(
//                                                           children: [
//                                                             SizedBox(
//                                                               height: 19.99,
//                                                               width: 16.42,
//                                                               child: SvgPicture
//                                                                   .asset(
//                                                                 "assets/images/image_10.svg",
//                                                                 color: MainColor
//                                                                     .colorFD6180,
//                                                                 height: 19.99,
//                                                                 width: 16.42,
//                                                               ),
//                                                             ),
//                                                             const SizedBox(
//                                                               width: 11.06,
//                                                             ),
//                                                             Text(
//                                                                 publicProfilesList[
//                                                                         _selectedurrent]
//                                                                     .workout![0]
//                                                                     .name
//                                                                     .toString(),
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 style:
//                                                                     const TextStyle(
//                                                                   fontSize: 12,
//                                                                   color: Color(
//                                                                       0xFF040404),
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w500,
//                                                                   fontFamily:
//                                                                       "QuicksandMedium",
//                                                                 )),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     )),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     publicProfilesList[_selectedurrent]
//                                                 .aboutMe ==
//                                             ""
//                                         ? const SizedBox.shrink()
//                                         : Column(
//                                             children: [
//                                               Container(
//                                                 alignment: Alignment.centerLeft,
//                                                 height: 50,
//                                                 width: MediaQuery.of(context)
//                                                     .size
//                                                     .width,
//                                                 color: const Color(0xFFF0F1F3),
//                                                 padding: const EdgeInsets.only(
//                                                     left: 20),
//                                                 child: const Text("About",
//                                                     style: TextStyle(
//                                                       color: Color(0xFF000000),
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.w700,
//                                                       fontFamily:
//                                                           "QuicksandBold",
//                                                     )),
//                                               ),
//                                               Container(
//                                                 alignment: Alignment.centerLeft,
//                                                 color: MainColor.colorWhite,
//                                                 padding: const EdgeInsets.only(
//                                                     left: 20,
//                                                     right: 20,
//                                                     top: 10,
//                                                     bottom: 15),
//                                                 child: Text(
//                                                     publicProfilesList[
//                                                             _selectedurrent]
//                                                         .aboutMe
//                                                         .toString(),
//                                                     style: const TextStyle(
//                                                       color: Color(0xFF535353),
//                                                       fontSize: 14,
//                                                       fontWeight:
//                                                           FontWeight.w500,
//                                                       fontFamily:
//                                                           "QuicksandMedium",
//                                                     )),
//                                               ),
//                                             ],
//                                           ),
//                                     responsemain.data!.users![_selectedurrent]
//                                             .interests!.isEmpty
//                                         ? const SizedBox.shrink()
//                                         : Column(
//                                             children: [
//                                               Container(
//                                                 alignment: Alignment.centerLeft,
//                                                 height: 50,
//                                                 width: MediaQuery.of(context)
//                                                     .size
//                                                     .width,
//                                                 color: const Color(0xFFF0F1F3),
//                                                 padding: const EdgeInsets.only(
//                                                     left: 20),
//                                                 child: Text('Interests'.tr,
//                                                     style: const TextStyle(
//                                                       color: Color(0xFF000000),
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.w700,
//                                                       fontFamily:
//                                                           "QuicksandBold",
//                                                     )),
//                                               ),
//                                               Container(
//                                                 alignment: Alignment.centerLeft,
//                                                 height: 50,
//                                                 color: MainColor.colorWhite,
//                                                 width: MediaQuery.of(context)
//                                                     .size
//                                                     .width,
//                                                 padding: const EdgeInsets.only(
//                                                     left: 20),
//                                                 child: ListView.builder(
//                                                     scrollDirection:
//                                                         Axis.horizontal,
//                                                     shrinkWrap: true,
//                                                     physics:
//                                                         const NeverScrollableScrollPhysics(),
//                                                     itemCount: responsemain
//                                                                 .data!
//                                                                 .users![
//                                                                     _selectedurrent]
//                                                                 .interests!
//                                                                 .length >
//                                                             3
//                                                         ? 3
//                                                         : responsemain
//                                                             .data!
//                                                             .users![
//                                                                 _selectedurrent]
//                                                             .interests!
//                                                             .length,
//                                                     itemBuilder:
//                                                         (BuildContext context,
//                                                             int subindex) {
//                                                       return Container(
//                                                           alignment:
//                                                               Alignment.center,
//                                                           child: Text(
//                                                               subindex == 2
//                                                                   ? '${responsemain.data!.users![_selectedurrent].interests![subindex].name.toString()},etc '
//                                                                   : '${responsemain.data!.users![_selectedurrent].interests![subindex].name.toString()}, ',
//                                                               style:
//                                                                   const TextStyle(
//                                                                 color: Color(
//                                                                     0xFF535353),
//                                                                 fontSize: 14,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w500,
//                                                                 fontFamily:
//                                                                     "QuicksandMedium",
//                                                               )));
//                                                     }),
//                                               ),
//                                             ],
//                                           ),
//                                     responsemain.data!.users![_selectedurrent]
//                                             .purposeofjoining!.isEmpty
//                                         ? const SizedBox.shrink()
//                                         : Column(
//                                             children: [
//                                               Container(
//                                                 alignment: Alignment.centerLeft,
//                                                 height: 50,
//                                                 width: MediaQuery.of(context)
//                                                     .size
//                                                     .width,
//                                                 color: const Color(0xFFF0F1F3),
//                                                 padding: const EdgeInsets.only(
//                                                     left: 20),
//                                                 child: Text(
//                                                     'Relationship Goals'.tr,
//                                                     style: const TextStyle(
//                                                       color: Color(0xFF000000),
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.w700,
//                                                       fontFamily:
//                                                           "QuicksandBold",
//                                                     )),
//                                               ),
//                                               Container(
//                                                 alignment: Alignment.centerLeft,
//                                                 height: 50,
//                                                 color: MainColor.colorWhite,
//                                                 width: MediaQuery.of(context)
//                                                     .size
//                                                     .width,
//                                                 padding: const EdgeInsets.only(
//                                                     left: 20),
//                                                 child: ListView.builder(
//                                                     scrollDirection:
//                                                         Axis.horizontal,
//                                                     shrinkWrap: true,
//                                                     physics:
//                                                         const NeverScrollableScrollPhysics(),
//                                                     itemCount: responsemain
//                                                                 .data!
//                                                                 .users![
//                                                                     _selectedurrent]
//                                                                 .purposeofjoining!
//                                                                 .length >
//                                                             3
//                                                         ? 3
//                                                         : responsemain
//                                                             .data!
//                                                             .users![
//                                                                 _selectedurrent]
//                                                             .purposeofjoining!
//                                                             .length,
//                                                     itemBuilder:
//                                                         (BuildContext context,
//                                                             int subindex) {
//                                                       return Container(
//                                                           alignment:
//                                                               Alignment.center,
//                                                           child: Text(
//                                                               subindex == 2
//                                                                   ? '${responsemain.data!.users![_selectedurrent].purposeofjoining![subindex].name.toString()},etc '
//                                                                   : '${responsemain.data!.users![_selectedurrent].purposeofjoining![subindex].name.toString()}, ',
//                                                               style:
//                                                                   const TextStyle(
//                                                                 color: Color(
//                                                                     0xFF535353),
//                                                                 fontSize: 14,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w500,
//                                                                 fontFamily:
//                                                                     "QuicksandMedium",
//                                                               )));
//                                                     }),
//                                               ),
//                                             ],
//                                           ),
//                                     Container(
//                                       alignment: Alignment.centerLeft,
//                                       height: 50,
//                                       width: MediaQuery.of(context).size.width,
//                                       color: const Color(0xFFF0F1F3),
//                                       padding: const EdgeInsets.only(left: 20),
//                                       child: Text('Basics'.tr,
//                                           style: const TextStyle(
//                                             color: Color(0xFF000000),
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.w700,
//                                             fontFamily: "QuicksandBold",
//                                           )),
//                                     ),
//                                     Container(
//                                       padding: const EdgeInsets.only(
//                                           left: 30, right: 20, top: 15),
//                                       child: Column(children: [
//                                         Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Row(
//                                                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                                   children: [
//                                                     SvgPicture.asset(
//                                                         'assets/images/image_13.svg',
//                                                         height: 22,
//                                                         width: 16),
//                                                     const SizedBox(width: 13),
//                                                     const Text('Gender',
//                                                         style: TextStyle(
//                                                           color:
//                                                               Color(0xFF292929),
//                                                           fontSize: 14,
//                                                           fontWeight:
//                                                               FontWeight.w600,
//                                                           fontFamily:
//                                                               "QuicksandSemiBold",
//                                                         )),
//                                                   ]),
//                                               Row(children: [
//                                                 Text(
//                                                     publicProfilesList[
//                                                             _selectedurrent]
//                                                         .gender
//                                                         .toString(),
//                                                     style: const TextStyle(
//                                                       color: Color(0xFFA6A6A6),
//                                                       fontSize: 14,
//                                                       fontWeight:
//                                                           FontWeight.w500,
//                                                       fontFamily:
//                                                           "QuicksandMedium",
//                                                     )),
//                                                 // Icon(
//                                                 //   Icons.arrow_forward_ios,
//                                                 //   color: Color(0xFFCCCCCC),
//                                                 // ),
//                                               ]),
//                                             ]),
//                                         const SizedBox(
//                                           height: 10,
//                                         ),
//                                         const Divider(
//                                           thickness: 1,
//                                         ),
//                                         const SizedBox(
//                                           height: 14,
//                                         ),
//                                         Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Row(children: [
//                                                 SvgPicture.asset(
//                                                     'assets/images/image_1.svg',
//                                                     height: 16,
//                                                     width: 16),
//                                                 const SizedBox(width: 13),
//                                                 const Text('Age',
//                                                     style: TextStyle(
//                                                       color: Color(0xFF292929),
//                                                       fontSize: 14,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       fontFamily:
//                                                           "QuicksandSemiBold",
//                                                     )),
//                                               ]),
//                                               Row(children: [
//                                                 Text(
//                                                     '${publicProfilesList[_selectedurrent].age.toString()} Year',
//                                                     style: const TextStyle(
//                                                       color: Color(0xFFA6A6A6),
//                                                       fontSize: 14,
//                                                       fontWeight:
//                                                           FontWeight.w500,
//                                                       fontFamily:
//                                                           "QuicksandMedium",
//                                                     )),
//                                                 // Icon(
//                                                 //   Icons.arrow_forward_ios,
//                                                 //   color: Color(0xFFCCCCCC),
//                                                 // ),
//                                               ]),
//                                             ]),
//                                         const SizedBox(
//                                           height: 10,
//                                         ),
//                                         const Divider(
//                                           thickness: 1,
//                                         ),
//                                         const SizedBox(
//                                           height: 14,
//                                         ),
//                                         publicProfilesList[_selectedurrent]
//                                                     .height ==
//                                                 ""
//                                             ? const SizedBox.shrink()
//                                             : Column(
//                                                 children: [
//                                                   Row(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .spaceBetween,
//                                                       children: [
//                                                         Row(children: [
//                                                           SvgPicture.asset(
//                                                               'assets/images/image_2.svg',
//                                                               height: 18,
//                                                               width: 16),
//                                                           const SizedBox(
//                                                               width: 13),
//                                                           const Text('Height',
//                                                               style: TextStyle(
//                                                                 color: Color(
//                                                                     0xFF292929),
//                                                                 fontSize: 14,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w600,
//                                                                 fontFamily:
//                                                                     "QuicksandSemiBold",
//                                                               )),
//                                                         ]),
//                                                         Row(children: [
//                                                           Text(
//                                                               publicProfilesList[
//                                                                               _selectedurrent]
//                                                                           .height ==
//                                                                       ""
//                                                                   ? "Not specified"
//                                                                   : publicProfilesList[
//                                                                           _selectedurrent]
//                                                                       .height
//                                                                       .toString(),
//                                                               style:
//                                                                   const TextStyle(
//                                                                 color: Color(
//                                                                     0xFFA6A6A6),
//                                                                 fontSize: 14,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w500,
//                                                                 fontFamily:
//                                                                     "QuicksandMedium",
//                                                               )),
//                                                           // Icon(
//                                                           //   Icons.arrow_forward_ios,
//                                                           //   color: Color(0xFFCCCCCC),
//                                                           // ),
//                                                         ]),
//                                                       ]),
//                                                   const SizedBox(
//                                                     height: 10,
//                                                   ),
//                                                   const Divider(
//                                                     thickness: 1,
//                                                   ),
//                                                   const SizedBox(
//                                                     height: 14,
//                                                   ),
//                                                 ],
//                                               ),
//                                         publicProfilesList[_selectedurrent]
//                                                 .educations!
//                                                 .isEmpty
//                                             ? const SizedBox.shrink()
//                                             : columnEducation(),
//                                         publicProfilesList[_selectedurrent]
//                                                     .children ==
//                                                 ""
//                                             ? const SizedBox.shrink()
//                                             : columnChildren(),
//                                         Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Row(children: [
//                                                 SvgPicture.asset(
//                                                     'assets/images/image_5.svg',
//                                                     height: 16,
//                                                     width: 16),
//                                                 const SizedBox(width: 13),
//                                                 const Text('Zodiac Sign',
//                                                     style: TextStyle(
//                                                       color: Color(0xFF292929),
//                                                       fontSize: 14,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       fontFamily:
//                                                           "QuicksandSemiBold",
//                                                     )),
//                                               ]),
//                                               Row(children: [
//                                                 Text(
//                                                     publicProfilesList[
//                                                                     _selectedurrent]
//                                                                 .zodiacSign ==
//                                                             ""
//                                                         ? "Not specified"
//                                                         : publicProfilesList[
//                                                                 _selectedurrent]
//                                                             .zodiacSign
//                                                             .toString(),
//                                                     style: const TextStyle(
//                                                       color: Color(0xFFA6A6A6),
//                                                       fontSize: 14,
//                                                       fontWeight:
//                                                           FontWeight.w500,
//                                                       fontFamily:
//                                                           "QuicksandMedium",
//                                                     )),
//                                                 // Icon(
//                                                 //   Icons.arrow_forward_ios,
//                                                 //   color: Color(0xFFCCCCCC),
//                                                 // ),
//                                               ]),
//                                             ]),
//                                         const SizedBox(
//                                           height: 10,
//                                         ),
//                                         const Divider(
//                                           thickness: 1,
//                                         ),
//                                         const SizedBox(
//                                           height: 36,
//                                         ),
//                                       ]),
//                                     ),
//                                     publicProfilesList[_selectedurrent]
//                                                 .pet!
//                                                 .isEmpty &&
//                                             publicProfilesList[_selectedurrent]
//                                                     .alcohol ==
//                                                 "" &&
//                                             publicProfilesList[_selectedurrent]
//                                                     .smoking ==
//                                                 "" &&
//                                             publicProfilesList[_selectedurrent]
//                                                 .workout!
//                                                 .isEmpty &&
//                                             publicProfilesList[_selectedurrent]
//                                                 .dietary!
//                                                 .isEmpty &&
//                                             publicProfilesList[_selectedurrent]
//                                                     .instagram ==
//                                                 ""
//                                         ? const SizedBox.shrink()
//                                         : Container(
//                                             alignment: Alignment.centerLeft,
//                                             height: 50,
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             color: const Color(0xFFF0F1F3),
//                                             padding:
//                                                 const EdgeInsets.only(left: 20),
//                                             child: Text('Life Style'.tr,
//                                                 style: const TextStyle(
//                                                   color: Color(0xFF000000),
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w700,
//                                                   fontFamily: "QuicksandBold",
//                                                 )),
//                                           ),
//                                     Container(
//                                       padding: const EdgeInsets.only(
//                                           left: 30, right: 20, top: 15),
//                                       child: Column(children: [
//                                         publicProfilesList[_selectedurrent]
//                                                 .pet!
//                                                 .isNotEmpty
//                                             ? columnPets()
//                                             : const SizedBox.shrink(),
//                                         publicProfilesList[_selectedurrent]
//                                                     .alcohol ==
//                                                 ""
//                                             ? const SizedBox.shrink()
//                                             : columnAlcohol(),
//                                         publicProfilesList[_selectedurrent]
//                                                     .smoking ==
//                                                 ""
//                                             ? const SizedBox.shrink()
//                                             : columnSmoking(),
//                                         publicProfilesList[_selectedurrent]
//                                                 .workout!
//                                                 .isNotEmpty
//                                             ? columnWorkout()
//                                             : const SizedBox.shrink(),
//                                         publicProfilesList[_selectedurrent]
//                                                 .dietary!
//                                                 .isNotEmpty
//                                             ? columnDiatory()
//                                             : const SizedBox.shrink(),
//                                         publicProfilesList[_selectedurrent]
//                                                     .instagram ==
//                                                 ""
//                                             ? const SizedBox.shrink()
//                                             : columnInstagram(),
//                                         publicProfilesList[_selectedurrent]
//                                                     .jobTittle ==
//                                                 ""
//                                             ? const SizedBox.shrink()
//                                             : const SizedBox(
//                                                 height: 20,
//                                               ),
//                                       ]),
//                                     ),
//                                     publicProfilesList[_selectedurrent]
//                                                 .jobTittle ==
//                                             ""
//                                         ? const SizedBox.shrink()
//                                         : Container(
//                                             alignment: Alignment.centerLeft,
//                                             height: 50,
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             color: const Color(0xFFF0F1F3),
//                                             padding:
//                                                 const EdgeInsets.only(left: 20),
//                                             child: Text('Job Title'.tr,
//                                                 style: const TextStyle(
//                                                   color: Color(0xFF000000),
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w700,
//                                                   fontFamily: "QuicksandBold",
//                                                 )),
//                                           ),
//                                     publicProfilesList[_selectedurrent]
//                                                 .jobTittle ==
//                                             ""
//                                         ? const SizedBox.shrink()
//                                         : Container(
//                                             color: MainColor.colorWhite,
//                                             padding: const EdgeInsets.only(
//                                                 left: 20,
//                                                 right: 20,
//                                                 top: 10,
//                                                 bottom: 15),
//                                             child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                       publicProfilesList[
//                                                               _selectedurrent]
//                                                           .jobTittle
//                                                           .toString(),
//                                                       style: const TextStyle(
//                                                         color:
//                                                             Color(0xFF535353),
//                                                         fontSize: 14,
//                                                         fontWeight:
//                                                             FontWeight.w500,
//                                                         fontFamily:
//                                                             "QuicksandMedium",
//                                                       )),
//                                                   // Icon(Icons.arrow_forward_ios,
//                                                   //     size: 30, color: Color(0xFFE9E9E9))
//                                                 ]),
//                                           ),
//                                     publicProfilesList[_selectedurrent]
//                                                 .company ==
//                                             ""
//                                         ? const SizedBox.shrink()
//                                         : columnCompany(context),
//                                     publicProfilesList[_selectedurrent]
//                                             .education!
//                                             .isEmpty
//                                         ? const SizedBox.shrink()
//                                         : columnEducations(context),
//                                     publicProfilesList[_selectedurrent]
//                                                 .livingIn ==
//                                             ""
//                                         ? const SizedBox.shrink()
//                                         : columnLivingIn(context),
//                                     publicProfilesList[_selectedurrent]
//                                                 .sexualOrientation ==
//                                             ""
//                                         ? const SizedBox.shrink()
//                                         : columnSexualOrientation(context),
//                                     publicProfilesList[_selectedurrent]
//                                             .politicalView!
//                                             .isEmpty
//                                         ? const SizedBox.shrink()
//                                         : columnPoiliticalViews(context),
//                                     publicProfilesList[_selectedurrent]
//                                             .physique!
//                                             .isEmpty
//                                         ? const SizedBox.shrink()
//                                         : columnPhysique(context),
//                                     publicProfilesList[_selectedurrent]
//                                             .religiousBeliefs!
//                                             .isEmpty
//                                         ? const SizedBox.shrink()
//                                         : columnReligiousBeliefs(context)
//                                   ],
//                                 ),
//                           const SizedBox(
//                             height: 45,
//                           ),
//                         ],
//                       )
//                     : const SizedBox.shrink()):const SizedBox.shrink()
//                     );
//   }

//   settData() {
//     lifeStyleList.clear();
//     for (int i = 0; i < publicProfilesList.length; i++) {
//       lifeStyleList.add(LifeStyleTabs(
//           title: publicProfilesList[_selectedurrent].height,
//           image: "assets/images/img_height.png"));
//       lifeStyleList.add(LifeStyleTabs(
//           title: publicProfilesList[_selectedurrent].children,
//           image: "assets/images/ic_child.png"));
//       lifeStyleList.add(LifeStyleTabs(
//           title: publicProfilesList[_selectedurrent].smoking,
//           image: "assets/images/image_9.svg"));
//       lifeStyleList.add(LifeStyleTabs(
//           title: publicProfilesList[_selectedurrent].alcohol,
//           image: "assets/images/image_8.svg"));
//       lifeStyleList.add(LifeStyleTabs(
//           title: publicProfilesList[_selectedurrent].dietary!.isNotEmpty
//               ? publicProfilesList[_selectedurrent].dietary![0].name
//               : "",
//           image: "assets/images/image_11.svg"));
//       lifeStyleList.add(LifeStyleTabs(
//           title: publicProfilesList[_selectedurrent].workout!.isNotEmpty
//               ? publicProfilesList[_selectedurrent].workout![0].name
//               : "",
//           image: "assets/images/image_10.svg"));
//     }
//     setState(() {});
//   }

//   Future<void> publicProfilesApi(int page) async {
// //    setState(() {});
//     String authenticate;
//     String userId;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     authenticate = prefs.getString('token').toString();
//     userId = prefs.getString('user_id').toString();
//     // Utility.progressLoadingDialog(context, true);
//     searching = true;
//     var request = {};
//     request['page'] = page;
//     request['received_user_id'] =
//         receiverId == "" ? "" : receiverId.substring(0, receiverId.length - 1);
//     request['disliked_id'] =
//         dislikeID == '' ? '' : dislikeID.substring(0, dislikeID.length - 1);
//     HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
//       HttpLogger(logLevel: LogLevel.BODY),
//     ]);
//     var response = await http.post(Uri.parse(APIservices.publicProfiles),
//         body: convert.jsonEncode(request),
//         headers: {
//           "content-type": "application/json",
//           "accept": "application/json",
//           "X-AUTHTOKEN": authenticate,
//           "X-USERID": userId,
//         });
//     //Utility.progressLoadingDialog(context, false);
//     searching = false;
//     Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);

//     if (jsonResponse['status'] == true) {
//       responsemain = PublicProfileUsers.fromJson(jsonResponse);
//       for (int i = 0; i < responsemain.data!.users!.length; i++) {
//         publicProfilesList.add(responsemain.data!.users![i]);
//       }

//       // publicProfilesList.sort((a, b) => a.boostStatus!.compareTo(b.boostStatus.toString()));
//       // publicProfilesList = publicProfilesList.reversed.toList();
//       responsemain.data!.users!
//           .sort((a, b) => a.boostStatus!.compareTo(b.boostStatus.toString()));
//       publicProfilesList = responsemain.data!.users!.reversed.toList();
//       responsemain.data!.users = publicProfilesList;

//       relationsgoals = responsemain
//               .data!.users![_selectedurrent].relationshipGoal!.isNotEmpty
//           ? responsemain.data!.users![_selectedurrent].relationshipGoal![0].name
//           : '';
//       loading = true;
//       prefs.setBool('show_tier', true);
//       year = int.parse(
//           responsemain.data!.users![_selectedurrent].dob!.split('-')[0]);
//       month = int.parse(
//           responsemain.data!.users![_selectedurrent].dob!.split('-')[1]);
//       date = int.parse(
//           responsemain.data!.users![_selectedurrent].dob!.split('-')[2]);
//       age(DateTime.now(), DateTime(year!, month!, date!));
//       pageindex = 0;
//       prefs.setString('receiver_id', "");
//       prefs.setString('dislike_user_id', "");
//       log('jsonResponse>>> $jsonResponse');
//       setState(() {});
//     } else {
//       loading = true;
//       // Utility().getToast(jsonResponse['message']);
//       setState(() {});
//     }
//   }

//   Column columnReligiousBeliefs(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 50,
//           width: MediaQuery.of(context).size.width,
//           color: const Color(0xFFF0F1F3),
//           padding: const EdgeInsets.only(left: 20),
//           child: Text('Religious Beliefs'.tr,
//               style: const TextStyle(
//                 color: Color(0xFF000000),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: "QuicksandBold",
//               )),
//         ),
//         Container(
//           color: MainColor.colorWhite,
//           padding:
//               const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 25),
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             Text(
//                 publicProfilesList[_selectedurrent].religiousBeliefs!.isNotEmpty
//                     ? publicProfilesList[_selectedurrent]
//                         .religiousBeliefs![0]
//                         .name
//                         .toString()
//                     : "Not specified",
//                 style: const TextStyle(
//                   color: Color(0xFF535353),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(Icons.arrow_forward_ios,
//             //     size: 30, color: Color(0xFFE9E9E9))
//           ]),
//         ),
//       ],
//     );
//   }

//   Column columnPhysique(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 50,
//           width: MediaQuery.of(context).size.width,
//           color: const Color(0xFFF0F1F3),
//           padding: const EdgeInsets.only(left: 20),
//           child: Text('Physique'.tr,
//               style: const TextStyle(
//                 color: Color(0xFF000000),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: "QuicksandBold",
//               )),
//         ),
//         Container(
//           color: MainColor.colorWhite,
//           padding:
//               const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             Text(
//                 publicProfilesList[_selectedurrent].physique!.isNotEmpty
//                     ? publicProfilesList[_selectedurrent]
//                         .physique![0]
//                         .name
//                         .toString()
//                     : "Not specified",
//                 style: const TextStyle(
//                   color: Color(0xFF535353),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(Icons.arrow_forward_ios,
//             //     size: 30, color: Color(0xFFE9E9E9))
//           ]),
//         ),
//       ],
//     );
//   }

//   Column columnPoiliticalViews(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 50,
//           width: MediaQuery.of(context).size.width,
//           color: const Color(0xFFF0F1F3),
//           padding: const EdgeInsets.only(left: 20),
//           child: Text('Political Views'.tr,
//               style: const TextStyle(
//                 color: Color(0xFF000000),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: "QuicksandBold",
//               )),
//         ),
//         Container(
//           color: MainColor.colorWhite,
//           padding:
//               const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             Text(
//                 publicProfilesList[_selectedurrent].politicalView!.isNotEmpty
//                     ? publicProfilesList[_selectedurrent]
//                         .politicalView![0]
//                         .name
//                         .toString()
//                     : "Not specified",
//                 style: const TextStyle(
//                   color: Color(0xFF535353),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(Icons.arrow_forward_ios,
//             //     size: 30, color: Color(0xFFE9E9E9))
//           ]),
//         ),
//       ],
//     );
//   }

//   Column columnSexualOrientation(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 50,
//           width: MediaQuery.of(context).size.width,
//           color: const Color(0xFFF0F1F3),
//           padding: const EdgeInsets.only(left: 20),
//           child: Text('Sexual Orientation'.tr,
//               style: const TextStyle(
//                 color: Color(0xFF000000),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: "QuicksandBold",
//               )),
//         ),
//         Container(
//           color: MainColor.colorWhite,
//           padding:
//               const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             Text(
//                 publicProfilesList[_selectedurrent]
//                     .sexualOrientation
//                     .toString(),
//                 style: const TextStyle(
//                   color: Color(0xFF535353),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(Icons.arrow_forward_ios,
//             //     size: 30, color: Color(0xFFE9E9E9))
//           ]),
//         ),
//       ],
//     );
//   }

//   Column columnLivingIn(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 50,
//           width: MediaQuery.of(context).size.width,
//           color: const Color(0xFFF0F1F3),
//           padding: const EdgeInsets.only(left: 20),
//           child: Text('Living In'.tr,
//               style: const TextStyle(
//                 color: Color(0xFF000000),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: "QuicksandBold",
//               )),
//         ),
//         Container(
//           color: MainColor.colorWhite,
//           padding:
//               const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             Flexible(
//               child:
//                   Text(publicProfilesList[_selectedurrent].livingIn.toString(),
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(
//                         color: Color(0xFF535353),
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: "QuicksandMedium",
//                       )),
//             ),
//             // Icon(Icons.arrow_forward_ios,
//             //     size: 30, color: Color(0xFFE9E9E9))
//           ]),
//         ),
//       ],
//     );
//   }

//   Column columnEducations(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 50,
//           width: MediaQuery.of(context).size.width,
//           color: const Color(0xFFF0F1F3),
//           padding: const EdgeInsets.only(left: 20),
//           child: Text('Educations'.tr,
//               style: const TextStyle(
//                 color: Color(0xFF000000),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: "QuicksandBold",
//               )),
//         ),
//         Container(
//           color: MainColor.colorWhite,
//           padding:
//               const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             Text(
//                 publicProfilesList[_selectedurrent].education!.isNotEmpty
//                     ? publicProfilesList[_selectedurrent]
//                         .education![0]
//                         .name
//                         .toString()
//                     : "Not specified",
//                 style: const TextStyle(
//                   color: Color(0xFF535353),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(Icons.arrow_forward_ios,
//             //     size: 30, color: Color(0xFFE9E9E9))
//           ]),
//         ),
//       ],
//     );
//   }

//   Column columnCompany(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 50,
//           width: MediaQuery.of(context).size.width,
//           color: const Color(0xFFF0F1F3),
//           padding: const EdgeInsets.only(left: 20),
//           child: Text('Company'.tr,
//               style: const TextStyle(
//                 color: Color(0xFF000000),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: "QuicksandBold",
//               )),
//         ),
//         Container(
//           color: MainColor.colorWhite,
//           padding:
//               const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             Text(publicProfilesList[_selectedurrent].company.toString(),
//                 style: const TextStyle(
//                   color: Color(0xFF535353),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(Icons.arrow_forward_ios,
//             //     size: 30, color: Color(0xFFE9E9E9))
//           ]),
//         ),
//       ],
//     );
//   }

//   Column columnInstagram() {
//     return Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Row(children: [
//             SvgPicture.asset('assets/images/image_12.svg',
//                 height: 16, width: 16),
//             const SizedBox(width: 13),
//             const Text('Instagram',
//                 style: TextStyle(
//                   color: Color(0xFF292929),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: "QuicksandSemiBold",
//                 )),
//           ]),
//           Row(children: [
//             GestureDetector(
//               onTap: () {
//                 openInstagram(
//                     publicProfilesList[_selectedurrent].instagram.toString());
//               },
//               child:
//                   Text(publicProfilesList[_selectedurrent].instagram.toString(),
//                       style: const TextStyle(
//                         color: Color(0xFF0038FF),
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: "QuicksandMedium",
//                       )),
//             )
//             // Icon(
//             //   Icons.arrow_forward_ios,
//             //   color: Color(0xFFCCCCCC),
//             // ),
//           ]),
//         ]),
//         const SizedBox(
//           height: 10,
//         ),
//         const Divider(
//           thickness: 1,
//         ),
//       ],
//     );
//   }

//   Column columnDiatory() {
//     return Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Row(children: [
//             SvgPicture.asset('assets/images/image_11.svg',
//                 height: 16, width: 16),
//             const SizedBox(width: 13),
//             const Text('Dietary',
//                 style: TextStyle(
//                   color: Color(0xFF292929),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: "QuicksandSemiBold",
//                 )),
//           ]),
//           Row(children: [
//             Text(
//                 publicProfilesList[_selectedurrent].dietary!.isNotEmpty
//                     ? publicProfilesList[_selectedurrent]
//                         .dietary![0]
//                         .name
//                         .toString()
//                     : "Not specified",
//                 style: const TextStyle(
//                   color: Color(0xFFA6A6A6),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//           ]),
//         ]),
//         const SizedBox(
//           height: 10,
//         ),
//         const Divider(
//           thickness: 1,
//         ),
//         const SizedBox(
//           height: 14,
//         ),
//       ],
//     );
//   }

//   Column columnWorkout() {
//     return Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Row(children: [
//             SvgPicture.asset('assets/images/image_10.svg',
//                 height: 16, width: 16),
//             const SizedBox(width: 13),
//             const Text('Workout',
//                 style: TextStyle(
//                   color: Color(0xFF292929),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: "QuicksandSemiBold",
//                 )),
//           ]),
//           Row(children: [
//             Text(
//                 publicProfilesList[_selectedurrent].workout!.isNotEmpty
//                     ? publicProfilesList[_selectedurrent]
//                         .workout![0]
//                         .name
//                         .toString()
//                     : "Not specified",
//                 style: const TextStyle(
//                   color: Color(0xFFA6A6A6),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(
//             //   Icons.arrow_forward_ios,
//             //   color: Color(0xFFCCCCCC),
//             // ),
//           ]),
//         ]),
//         const SizedBox(
//           height: 10,
//         ),
//         const Divider(
//           thickness: 1,
//         ),
//         const SizedBox(
//           height: 14,
//         ),
//       ],
//     );
//   }

//   Column columnSmoking() {
//     return Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Row(children: [
//             SvgPicture.asset('assets/images/image_9.svg', height: 8, width: 16),
//             const SizedBox(width: 13),
//             const Text('Smoking',
//                 style: TextStyle(
//                   color: Color(0xFF292929),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: "QuicksandSemiBold",
//                 )),
//           ]),
//           Row(children: [
//             Text(
//                 publicProfilesList[_selectedurrent].smoking == ""
//                     ? "Not specified"
//                     : publicProfilesList[_selectedurrent].smoking.toString(),
//                 style: const TextStyle(
//                   color: Color(0xFFA6A6A6),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(
//             //   Icons.arrow_forward_ios,
//             //   color: Color(0xFFCCCCCC),
//             // ),
//           ]),
//         ]),
//         const SizedBox(
//           height: 10,
//         ),
//         const Divider(
//           thickness: 1,
//         ),
//         const SizedBox(
//           height: 14,
//         ),
//       ],
//     );
//   }

//   Column columnAlcohol() {
//     return Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Row(children: [
//             SvgPicture.asset('assets/images/image_8.svg',
//                 height: 17, width: 16),
//             const SizedBox(width: 13),
//             const Text('Alcohol',
//                 style: TextStyle(
//                   color: Color(0xFF292929),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: "QuicksandSemiBold",
//                 )),
//           ]),
//           Row(children: [
//             Text(
//                 publicProfilesList[_selectedurrent].alcohol == ""
//                     ? "Not specified"
//                     : publicProfilesList[_selectedurrent].alcohol.toString(),
//                 style: const TextStyle(
//                   color: Color(0xFFA6A6A6),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(
//             //   Icons.arrow_forward_ios,
//             //   color: Color(0xFFCCCCCC),
//             // ),
//           ]),
//         ]),
//         const SizedBox(
//           height: 10,
//         ),
//         const Divider(
//           thickness: 1,
//         ),
//         const SizedBox(
//           height: 14,
//         ),
//       ],
//     );
//   }

//   Column columnPets() {
//     return Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SvgPicture.asset('assets/images/image_7.svg',
//                     height: 17, width: 16),
//                 const SizedBox(width: 13),
//                 const Text('Pets',
//                     style: TextStyle(
//                       color: Color(0xFF292929),
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       fontFamily: "QuicksandSemiBold",
//                     )),
//               ]),
//           Row(children: [
//             Text(publicProfilesList[_selectedurrent].pet![0].name.toString(),
//                 style: const TextStyle(
//                   color: Color(0xFFA6A6A6),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//           ]),
//         ]),
//         const SizedBox(
//           height: 10,
//         ),
//         const Divider(
//           thickness: 1,
//         ),
//         const SizedBox(
//           height: 14,
//         ),
//       ],
//     );
//   }

//   Column columnChildren() {
//     return Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Row(children: [
//             SvgPicture.asset('assets/images/image_4.svg',
//                 height: 13, width: 16),
//             const SizedBox(width: 13),
//             const Text('Children',
//                 style: TextStyle(
//                   color: Color(0xFF292929),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: "QuicksandSemiBold",
//                 )),
//           ]),
//           publicProfilesList[_selectedurrent].children == ""
//               ? const Text("Not specified",
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     color: Color(0xFFA6A6A6),
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "QuicksandMedium",
//                   ))
//               : Flexible(
//                   child: Text(
//                       publicProfilesList[_selectedurrent].children.toString(),
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(
//                         color: Color(0xFFA6A6A6),
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: "QuicksandMedium",
//                       )),
//                 ),
//         ]),
//         const SizedBox(
//           height: 10,
//         ),
//         const Divider(
//           thickness: 1,
//         ),
//         const SizedBox(
//           height: 14,
//         ),
//       ],
//     );
//   }

//   Column columnEducation() {
//     return Column(
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Row(children: [
//             SvgPicture.asset('assets/images/image_3.svg',
//                 height: 14, width: 16),
//             const SizedBox(width: 13),
//             const Text('Education',
//                 style: TextStyle(
//                   color: Color(0xFF292929),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: "QuicksandSemiBold",
//                 )),
//           ]),
//           Row(children: [
//             Text(
//                 publicProfilesList[_selectedurrent].educations!.isNotEmpty
//                     ? publicProfilesList[_selectedurrent]
//                         .educations![0]
//                         .toString()
//                     : "Not specified",
//                 style: const TextStyle(
//                   color: Color(0xFFA6A6A6),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: "QuicksandMedium",
//                 )),
//             // Icon(
//             //   Icons.arrow_forward_ios,
//             //   color: Color(0xFFCCCCCC),
//             // ),
//           ]),
//         ]),
//         const SizedBox(
//           height: 10,
//         ),
//         const Divider(
//           thickness: 1,
//         ),
//         const SizedBox(
//           height: 14,
//         ),
//       ],
//     );
//   }

//   Future<void> viewProfile() async {
//     String authenticate;
//     String userId;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     authenticate = prefs.getString('token').toString();
//     userId = prefs.getString('user_id').toString();
//     HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
//       HttpLogger(logLevel: LogLevel.BODY),
//     ]);
//     var response = await http.get(Uri.parse(APIservices.profileUser),
//         // body: convert.jsonEncode(request),
//         headers: {
//           "content-type": "application/json",
//           "accept": "application/json",
//           "X-AUTHTOKEN": authenticate,
//           "X-USERID": userId,
//         });
//     Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
//     if (jsonResponse['status'] == true) {
//       profileResponse = ProfileUser.fromJson(jsonResponse);
//       luv = profileResponse.data!.luv;
//       uniqueId = profileResponse.data!.username;
//       prefs.setString(
//           'user_image', profileResponse.data!.profileImage.toString());
//       prefs.setString("globalPot", profileResponse.data!.globalPot.toString());

//       prefs.setString('user_name',
//           '${profileResponse.data!.firstname.toString()} ${profileResponse.data!.lastname.toString()}');
//       prefs.setString('profile_status',
//           profileResponse.data!.profileVerifyStatus.toString());
//       prefs.setString('luv', profileResponse.data!.luv.toString());
//       prefs.setString('unique_id', profileResponse.data!.username.toString());
//       prefs.setString(
//           'tierStatus', profileResponse.data!.tierstatus.toString());
//       // setStatus("Online");

//       setState(() {});
//     } else {
//       Utility().getToast(jsonResponse['message']);
//       setState(() {});
//     }
//   }

//   MyGalleryList galleryresponsemain = MyGalleryList();
//   List<Data10> imageLists = [];

//   Future<void> myGalleryListApi() async {
//     setState(() {});
//     String authenticate;
//     String userId;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     authenticate = prefs.getString('token').toString();
//     userId = prefs.getString('user_id').toString();
//     var request = {};
//     HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
//       HttpLogger(logLevel: LogLevel.BODY),
//     ]);
//     var response = await http.post(Uri.parse(APIservices.galleryList),
//         body: convert.jsonEncode(request),
//         headers: {
//           "content-type": "application/json",
//           "accept": "application/json",
//           "X-AUTHTOKEN": authenticate,
//           "X-USERID": userId,
//         });
//     Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
//     if (jsonResponse['status'] == true) {
//       galleryresponsemain = MyGalleryList.fromJson(jsonResponse);
//       imageLists = galleryresponsemain.data!;
//       prefs.setString('user_image', imageLists[0].images.toString());
//       setState(() {});
//     } else {
//       // Utility().getToast(galleryresponsemain.message);
//       setState(() {});
//     }
//   }

//   void openInstagram(String username) async {
//     final url = 'https://www.instagram.com/$username/';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   // void setStatus(String status) async {
//   //   try {
//   //     var userid = profileResponse.data!.id.toString();
//   //     var name =
//   //         "${profileResponse.data!.firstname} ${profileResponse.data!.lastname}";
//   //     await FirebaseFirestore.instance
//   //         .collection("users")
//   //         .doc(userid.toString())
//   //         .update({
//   //       "status": status,
//   //       "name": name,
//   //     });

//   //     setState(() {});
//   //   } catch (e) {}
//   // }

//   age(DateTime today, DateTime dob) {
//     final year = today.year - dob.year;
//     final mth = today.month - dob.month;
//     final days = today.day - dob.day;
//     if (mth < 0) {
//     } else {
//       userAge = year;
//     }
//   }

//   callBack() {
//     setState(() {
//       viewProfile();
//     });
//   }

//   AppBar appBar(BuildContext context) {
//     return AppBar(
//       toolbarHeight: 70,
//       elevation: 0,
//       centerTitle: true,
//       automaticallyImplyLeading: false,
//       backgroundColor: MainColor.colorWhite,
//       leadingWidth: 85,
//       leading: Padding(
//         padding: const EdgeInsets.only(left: 15),
//         child: GestureDetector(
//           onTap: () {
//             // Navigator.push(
//             //     context,
//             //     MaterialPageRoute(
//             //         builder: (context) => LoveReceivedScreen(
//             //               luv: luv.toString(),
//             //               uniqueId: uniqueId.toString(),
//             //             ))).then((value) {
//             //   (value ?? false) ? callBack() : null;
//             // });
//           },
//           child: Row(
//             children: [
//               Image.asset(
//                 "assets/logo/Logo.png",
//                 height: 32,
//                 width: 32,
//               ),
//               Container(
//                 width: 27,
//                 margin: const EdgeInsets.only(left: 4),
//                 child: FittedBox(
//                   fit: BoxFit.scaleDown,
//                   alignment: Alignment.center,
//                   child: Text(
//                       luv == null
//                           ? "0.00"
//                           // : double.parse(luv.toString()).toStringAsFixed(2),

//                           : truncateStringToDecimalPlaces(luv.toString(), 2),
//                       style: const TextStyle(
//                           fontSize: 12.5,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: "QuicksandSemiBold",
//                           color: MainColor.colorBlack)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       title: Text('VIVID',
//           style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.w900,
//               fontFamily: "MikadoBold",
//               color: MainColor.heartRed)),
//       actions: [
//         GestureDetector(
//             onTap: () {
//               // Navigator.push(
//               //     context,
//               //     MaterialPageRoute(
//               //         builder: (context) => const PreferencesScreen()));
//             },
//             child: Image.asset(
//               "assets/logo/filterr.png",
//               width: 22,
//               height: 29,
//             )),
//         const SizedBox(
//           width: 15,
//         ),
//       ],
//     );
//   }

//   String capitalizeFirstLetter(String input) {
//     if (input == null || input.isEmpty) return input;

//     return input[0].toUpperCase() + input.substring(1);
//   }
// }

// class Content {
//   final String? text;
//   final Color? color;

//   Content({this.text, this.color});
// }

// class LifeStyleTabs {
//   final String? title;
//   final String? image;

//   LifeStyleTabs({this.title, this.image});
// }

// class ProfileModel {
//   final String? profileName;
//   final String? profileImage;
//   final String? distance;
//   final String? height;
//   final String? age;
//   final String? marriedduration;
//   final String? children;
//   final String? marriedstatus;
//   final String? abroad;

//   ProfileModel({
//     this.profileName,
//     this.profileImage,
//     this.distance,
//     this.marriedduration,
//     this.height,
//     this.age,
//     this.children,
//     this.marriedstatus,
//     this.abroad,
//   });
// }

// String truncateStringToDecimalPlaces(String stringValue, int decimalPlaces) {
//   int decimalSeparatorIndex = stringValue.indexOf('.');
//   if (decimalSeparatorIndex != -1 &&
//       stringValue.length > decimalSeparatorIndex + decimalPlaces + 1) {
//     stringValue =
//         stringValue.substring(0, decimalSeparatorIndex + decimalPlaces + 1);
//   }
//   return stringValue;
// }
