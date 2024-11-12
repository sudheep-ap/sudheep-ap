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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage('assets/images/bg_image7.jpg'),
        //   fit: BoxFit.cover,
        // ),
        color: AppColors.bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          kSizedBox40,
          // SizedBox(
          //   child: TextLiquidFill(
          //       text: 'ABOUT ME',
          //       waveColor: Colors.blueAccent,
          //       boxBackgroundColor: AppColors.bgColor,
          //       textStyle: const TextStyle(
          //           fontWeight: FontWeight.w800,
          //           fontSize: 22,
          //           letterSpacing: 1,
          //           fontFamily: AppFonts.monaSansBold,
          //           color: AppColors.textWhiteColor)),
          // ),
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
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        //  "Greetings! I'm Sudheep AP, a Flutter Developer with over 2 years of hands-on experience. I specialize in creating user-centric and efficient mobile applications. My passion is to contribute to innovative projects, both as a freelancer and a valuable team member.",

                        text: 'Greetings !\n\n',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: AppFonts.monaSansBold,
                            color: AppColors.textColor),
                        children: [
                          TextSpan(
                              text: "I'm ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17,
                                  letterSpacing: 0.7,
                                  fontFamily: AppFonts.monaSansLight,
                                  color: AppColors.textColor)),
                          TextSpan(
                              text: " Sudheep A P ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17,
                                  letterSpacing: 0.7,
                                  fontFamily: AppFonts.monaSansLight,
                                  color: AppColors.textWhiteColor)),
                          TextSpan(
                              text:
                                  " a dedicated Flutter Developer with over 2 years of hands-on experience in creating robust and scalable mobile applications.\nMy passion lies in crafting clean, efficient, and user-friendly solutions that meet the evolving needs of the digital landscape.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17,
                                  letterSpacing: 0.7,
                                  fontFamily: AppFonts.monaSansLight,
                                  color: AppColors.textColor)),
                        ],
                      ),
                    ),
                  ),
                ),
              )),

              // Expanded(
              //   child: Container(
              //     // height: 200,
              //     // width: 500,
              //     decoration: BoxDecoration(
              //       color: AppColors.kdepthGreyColor,
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: RichText(
              //         textAlign: TextAlign.center,
              //         text: const TextSpan(
              //           text: 'Greetings !\n\n',
              //           style: TextStyle(
              //               fontSize: 17,
              //               letterSpacing: 1,
              //               fontWeight: FontWeight.w800,
              //               color: AppColors.kTextWhiteColor,
              //               fontFamily: AppFonts.monaSansNormal),
              //           children: [
              //             TextSpan(
              //                 text:
              //                     //  "Greetings! I'm Sudheep AP, a Flutter Developer with over 2 years of hands-on experience. I specialize in creating user-centric and efficient mobile applications. My passion is to contribute to innovative projects, both as a freelancer and a valuable team member.",
              //                     "I'm Sudheep AP,  a dedicated Flutter Developer with over 2 years of hands-on experience in creating robust and scalable mobile applications.\nMy passion lies in crafting clean, efficient, and user-friendly solutions that meet the evolving needs of the digital landscape.",
              //                 style: TextStyle(
              //                     fontSize: 15,
              //                     // letterSpacing: 0.8,

              //                     //fontWeight: FontWeight.w800,
              //                     color: AppColors.kTextWhiteColor,
              //                     fontFamily: AppFonts.monaSansNormal)),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
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