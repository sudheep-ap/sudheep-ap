import 'package:flutter/material.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Contact_me/contact_me_content.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Profile/profile_content.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Works/works_content.dart';
import 'package:sudheep_portfolio/presentation/widgets/header_widget.dart';
import '../../Utils/common_widgets/common_widgets.dart';
import '../../Utils/constants/constants.dart';

PageController pageController = PageController(initialPage: 0);
int currentPage = 0;
// ScrollController to control scrolling
ScrollController scrollController = ScrollController();

// Keys for widgets you want to scroll to

GlobalKey homeNavigatorKey = GlobalKey();
GlobalKey profileNavigatorKey = GlobalKey();
GlobalKey workNavigatorKey = GlobalKey();
GlobalKey contactNavigatorKey = GlobalKey();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(controller: scrollController, slivers: [
      SliverAppBar(
        backgroundColor: AppColors.kElephantColor,
        expandedHeight: MediaQuery.sizeOf(context).height,
        floating: false,
        // title: Text('Hey Sudheep'),
        pinned: true,
        actions: const [HomeHeaderWidget()],
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            key: homeNavigatorKey,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.kElephantColor, // Start color
                AppColors.kBluewoodColor, // End color
              ],
            )),
            child: const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kSizedBox40,
                  Text('Hi Sudheep here ,',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                          letterSpacing: 2,
                          fontFamily: AppFonts.monaSansBold,
                          color: AppColors.textWhiteColor)),
                  kSizedBox30,
                  Text(
                      "Explore how my expertise in flutter development can elevate your projects.\nwhether you're seeking a skilled freelancer or a dedicated team member,\nI'm here to bring your ideas to life.",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          letterSpacing: 0.7,
                          fontFamily: AppFonts.monaSansLight,
                          color: AppColors.textColor)),
                ],
              ),
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Container(
            // height: MediaQuery.sizeOf(context).height,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.kElephantColor, // Start color
                AppColors.kBluewoodColor, // End color
              ],
            )),
            child: Wrap(
              children: [
                Container(
                    key: profileNavigatorKey, child: const ProfileContent()),
                Container(key: workNavigatorKey, child: const WorksContent()),
                Container(
                    key: contactNavigatorKey, child: const ContactMeContent()),
              ],
            )),
      ),
      // SliverToBoxAdapter(
      //   child: Center(
      //       child: TextButton(
      //     onPressed: () {},
      //     child: const Text('counter'),
      //   )),
      // ),
    ])));

    //           // ProfileContent(),
    //           // WorksContent(),
    //           // ContactMeContent(),
  }
}
