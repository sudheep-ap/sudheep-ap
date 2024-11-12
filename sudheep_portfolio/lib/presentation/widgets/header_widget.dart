import 'package:flutter/material.dart';
import '../../Utils/constants/constants.dart';
import '../Home/home_screen.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});
// Function to scroll to a specific widget
  void scrollToWidget(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: TextButton(
              onPressed: () {
                scrollToWidget(homeNavigatorKey);
              },
              child: const Text('Home',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.kTextWhiteColor,
                      fontFamily: AppFonts.monaSansBold))),
        ),
        SizedBox(
          width: 100,
          child: TextButton(
              onPressed: () {
                scrollToWidget(profileNavigatorKey);
              },
              child: const Text('About me',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.kTextWhiteColor,
                      fontFamily: AppFonts.monaSansBold))),
        ),
        SizedBox(
          width: 100,
          //  width: MediaQuery.sizeOf(context).width / 8,
          child: TextButton(
              onPressed: () {
                scrollToWidget(workNavigatorKey);
              },
              child: const Text('Works',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.kTextWhiteColor,
                      fontFamily: AppFonts.monaSansBold))),
        ),
        SizedBox(
          width: 100,
          child: TextButton(
              onPressed: () {
                scrollToWidget(contactNavigatorKey);
              },
              child: const Text('Contact',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.kTextWhiteColor,
                      fontFamily: AppFonts.monaSansBold))),
        ),
      ],
    );
  }
}
