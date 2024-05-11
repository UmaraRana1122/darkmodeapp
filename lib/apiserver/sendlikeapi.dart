import 'dart:convert' as convert;

import 'package:pretty_http_logger/pretty_http_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Apiserver/allurls.dart';
import '../utils/utility.dart';

class SendLikesAPi {
  Future<void> likesSend(String id) async {
    String authenticate;
    String userId;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    authenticate = prefs.getString('token').toString();
    userId = prefs.getString('user_id').toString();
    var request = {};
    request['received_user_id'] = id;
    HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
      HttpLogger(logLevel: LogLevel.BODY),
    ]);
    var response = await http.post(Uri.parse(APIservices.likesSend),
        body: convert.jsonEncode(request),
        headers: {
          "content-type": "application/json",
          "accept": "application/json",
          "X-AUTHTOKEN": authenticate,
          "X-USERID": userId,
        });
    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
    if (jsonResponse['status'] == true) {
      prefs.setString('receiver_id', "");
    } else {
      Utility().getToast(jsonResponse['message']);
    }
  }

  Future<void> dislikeSend(String id) async {
    String authenticate;
    String userId;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    authenticate = prefs.getString('token').toString();
    userId = prefs.getString('user_id').toString();
    var request = {};
    request['disliked_id'] = id;
    HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
      HttpLogger(logLevel: LogLevel.BODY),
    ]);
    var response = await http.post(Uri.parse(APIservices.userDislike),
        body: convert.jsonEncode(request),
        headers: {
          "content-type": "application/json",
          "accept": "application/json",
          "X-AUTHTOKEN": authenticate,
          "X-USERID": userId,
        });
    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
    if (jsonResponse['status'] == true) {
      prefs.setString('dislike_user_id', "");
    } else {
      Utility().getToast(jsonResponse['message']);
    }
  }
}

class Demo {
  final Function trueCase;
  final Function falseCase;
  final String baseUrl;
  final Map<dynamic, dynamic> params;
  final bool isxClient;
  final Function(Map<String, dynamic>) fromJson;
  final Function(bool) setLoading;

  Demo({
    required this.trueCase,
    required this.falseCase,
    required this.baseUrl,
    required this.params,
    required this.isxClient,
    required this.fromJson,
    required this.setLoading,
  });

  Future<void> customApiCall<Class>() async {
    String authenticate;
    String userId;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    authenticate = prefs.getString('token').toString();
    userId = prefs.getString('user_id').toString();
    setLoading(true);
    var request = params;
    HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
      HttpLogger(logLevel: LogLevel.BODY),
    ]);
    var response = await http.post(
      Uri.parse(baseUrl),
      body: convert.jsonEncode(request),
      headers: isxClient == true
          ? {
              "content-type": "application/json",
              "accept": "application/json",
              "X-CLIENT": APIservices.xClientToken,
            }
          : {
              "content-type": "application/json",
              "accept": "application/json",
              "X-AUTHTOKEN": authenticate,
              "X-USERID": userId,
            },
    );
    setLoading(false);
    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
    if (jsonResponse['status'] == true) {
      Class parsedResponse = fromJson(jsonResponse);
      trueCase(parsedResponse);
    } else {
      falseCase();
    }
  }
}

// ApiCall(
// baseUrl: ApiServer.login,
// falseCase: () {
// print("failled");
// },
// fromJson: LoginResponse.fromJson,
// setLoading: (bool) {
// Utility.progressloadingDialog(context, bool);
// },
// params: {
// "email": emailController.text,
// 'password': passwordController.text,
// 'fcm_token': sharedPreferences
//     .getString("fcmtoken")
//     .toString(),
// 'device_type': devicetype,
// 'device_id': devicetoken,
// },
// isxClient: true,
// trueCase: (loginResponse) {
// print("loginsuccess${65 + 65 + 655}");
// sharedPreferences.setString("TOKEN",
// loginResponse.data!.token.toString());
// if (context.mounted) {
// sharedPreferences.setBool("isLogin", true);
// Navigator.of(context).pushAndRemoveUntil(
// MaterialPageRoute(
// builder: (context) =>
// const DashBoardscreen(
// pagesProviderIndex: 0,
// )),
// (Route<dynamic> route) => false);
// }
// }).customApiCall();
