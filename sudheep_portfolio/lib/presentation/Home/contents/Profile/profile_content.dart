import 'package:flutter/material.dart';
import 'package:sudheep_portfolio/presentation/Home/home_screen.dart';
import '../../../../Utils/common_widgets/common_widgets.dart';
import '../../../../Utils/constants/constants.dart';

class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent>
    with TickerProviderStateMixin {
  late AnimationController animController;
  late Animation<Offset> animOffset;
  @override
  void initState() {
    // print('${pageController.page?.round() ?? 0}');
    // if ((pageController.page?.round() ?? 0) == 1) {

    animateHomeContent();
    // }
    print(currentPage);
    if (currentPage == 1) {
      print('page 1');
    }
    super.initState();
  }

  //Animation

  void animateHomeContent() {
    animController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: animController);
    animOffset = Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
        .animate(curve);
    animController.forward();
  }

// child: ClipPath(
  @override
  Widget build(BuildContext context) {
    return Container(
      // key: profileNavigatorKey,
      height: MediaQuery.sizeOf(context).height,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          kSizedBox100,

          const Text('ABOUT ME',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  letterSpacing: 1,
                  fontFamily: AppFonts.monaSansBold,
                  color: AppColors.textWhiteColor)),
          kSizedBox30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 35),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FadeTransition(
                      opacity: animController,
                      child: SlideTransition(
                        position: animOffset,
                        child: const Text(
                            "I'm a Flutter Developer with 3+ years of experience building high-performance, cross-platform mobile apps. Skilled in Flutter and Dart, I focus on creating smooth, efficient user experiences with clean code. Driven by Agile practices, I’m passionate about solving challenges and exploring new tech. I’m open to freelance projects and long-term roles, bringing dedication, responsiveness, and a commitment to quality to each collaboration. Let’s build something great together!",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                letterSpacing: 0.7,
                                fontFamily: AppFonts.monaSansLight,
                                color: AppColors.textColor)),
                      )),
                ),
              ),

              // ),
            ],
          ),
          // kSizedBox60,
          // SizedBox(
          //   width: 20,
          // ),
          // Container(
          //   height: 200,
          //   width: 500,
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 17, 69, 85),
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          // ),

          //  AnimatedDivider()
        ],
      ),
    );
  }
}




//  child: ClipRect(
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 45, horizontal: 35),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Color.fromARGB(255, 255, 255, 255)
//                             .withOpacity(0.5)),











