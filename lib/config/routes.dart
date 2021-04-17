import 'package:flutter/cupertino.dart';
import 'package:init_flutter_app_bloc/screen/login/login.dart';

class Routes {
  static const splash = "/";
  static const wellcome = "/home";
  static const login = "/login";

  static Map<String, Widget Function(BuildContext)> map = {
    splash: (context) => LoginScreen(),
    login: (context) => LoginScreen(),
    wellcome: (context) => LoginScreen(),
  };

  static Future<dynamic> pushTo(BuildContext context, Widget screen,
      {bool clear = false}) async {
    if (clear) {
      return Navigator.of(context).pushAndRemoveUntil(
          CupertinoPageRoute(builder: (context) => screen), (r) => false);
    }
    return Navigator.of(context)
        .push(CupertinoPageRoute(builder: (context) => screen));
  }
}
