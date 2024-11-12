import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';

class AppMethods {
//To show snackbar
  static void showSnackBar(context, message, clr) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: clr,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(15),
      content: Text(message,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white)),
      duration: const Duration(seconds: 3),
    ));
  }

//To show linear loading
  void showLinearLoading(
      context, bool isTouchDimissable, bool isBackNavAllowed) {
    showModalBottomSheet(
        isDismissible: isTouchDimissable,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (ctx) => WillPopScope(
            onWillPop: () async {
              return isBackNavAllowed;
            },
            child: const LinearProgressIndicator(
              color: AppColors.kMainYellowColor,
            )));
  }

// //To remove all routes and navigate to mainScreen(HOME)

//   static void navigateToMainScreen(context) {
//     Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(builder: (context) => const ScreenMainPage()),
//         (Route<dynamic> route) => false);
//   }

//To remove all routes and navigate to success screen

  // static void navigateToSuccessScreen(context) {
  //   Navigator.pushAndRemoveUntil(
  //       context,
  //       MaterialPageRoute(builder: (context) => const SuccessScreen()),
  //       (Route<dynamic> route) => false);
  // }

//Url laucher

  static Future<void> lauchUrl(url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
