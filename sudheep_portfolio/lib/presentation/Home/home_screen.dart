import 'package:flutter/material.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Contact_me/contact_me_content.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Home_content/home_content.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Profile/profile_content.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Works/works_content.dart';

PageController pageController = PageController(initialPage: 0);
int currentPage = 0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        controller: pageController,
        onPageChanged: (page) {
          currentPage = page;
          print('--------');
          print(currentPage);
        },
        padEnds: false,
        clipBehavior: Clip.antiAlias,
        allowImplicitScrolling: true,
        scrollDirection: Axis.vertical,
        children: const [
          HomeContent(),
          ProfileContent(),
          WorksContent(),
          ContactMeContent(),
        ],
      )),
    );
  }
}
