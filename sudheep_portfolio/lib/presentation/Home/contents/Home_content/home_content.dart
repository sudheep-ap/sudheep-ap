// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sudheep_portfolio/Utils/common_widgets/common_widgets.dart';
import 'package:sudheep_portfolio/Utils/constants/constants.dart';
import '../../../widgets/header_widget.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent>
    with TickerProviderStateMixin {
  late AnimationController animController;
  late Animation<Offset> animOffset;
  @override
  void initState() {
    super.initState();
    animateHomeContent();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: AppColors.kElephantColor,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/gifs/circle_animation.gif'))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeaderWidget(),
          Expanded(
            child: FadeTransition(
              opacity: animController,
              child: SlideTransition(
                position: animOffset,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
                        "Explore how my expertise in Flutter development can elevate your projects.\nWhether you're seeking a skilled freelancer or a dedicated team member,\nI'm here to bring your ideas to life.",
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
        ],
      ),
    );
  }
}













                                                  // Expanded(
                                                  //   child: BlocBuilder<HomeContentBloc, HomeContentState>(
                                                  //       builder: (context, state) {
                                                  //     return Row(
                                                  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  //       children: [
                                                  //         SizedBox(
                                                  //           width: 150,
                                                  //           child: TextButton(
                                                  //               onHover: (aboutMeTextHover) {
                                                  //                 context.read<HomeContentBloc>().add(OnHoverEvent(
                                                  //                     onProfileHover: aboutMeTextHover,
                                                  //                     onWorksHover: false,
                                                  //                     onContactsHover: false));
                                                  //               },
                                                  //               onPressed: () {
                                                  //                 pageController.animateToPage(1,
                                                  //                     duration: const Duration(milliseconds: 900),
                                                  //                     curve: Curves.easeIn);
                                                  //               },
                                                  //               child: Text('About me',
                                                  //                   style: TextStyle(
                                                  //                       fontSize: state.onProfileHover ? 17 : 15,
                                                  //                       color: state.onProfileHover
                                                  //                           ? AppColors.kTextWhiteColor
                                                  //                           : AppColors.kLigtGreyColor,
                                                  //                       fontFamily: AppFonts.monaSansBold))),
                                                  //         ),
                                                  //         SizedBox(
                                                  //           width: 150,
                                                  //           //  width: MediaQuery.sizeOf(context).width / 8,
                                                  //           child: TextButton(
                                                  //               onHover: (worksTextHover) {
                                                  //                 context.read<HomeContentBloc>().add(OnHoverEvent(
                                                  //                     onProfileHover: false,
                                                  //                     onWorksHover: worksTextHover,
                                                  //                     onContactsHover: false));
                                                  //               },
                                                  //               onPressed: () {
                                                  //                 pageController.animateToPage(2,
                                                  //                     duration: const Duration(milliseconds: 800),
                                                  //                     curve: Curves.easeIn);
                                                  //               },
                                                  //               child: Text('Works',
                                                  //                   style: TextStyle(
                                                  //                       fontSize: state.onWorksHover ? 17 : 15,
                                                  //                       color: state.onWorksHover
                                                  //                           ? AppColors.kTextWhiteColor
                                                  //                           : AppColors.kLigtGreyColor,
                                                  //                       fontFamily: AppFonts.monaSansBold))),
                                                  //         ),
                                                  //         SizedBox(
                                                  //           width: 150,
                                                  //           // width: MediaQuery.sizeOf(context).width / 8,
                                                  //           child: TextButton(
                                                  //               onHover: (contactTextHover) {
                                                  //                 context.read<HomeContentBloc>().add(OnHoverEvent(
                                                  //                     onProfileHover: false,
                                                  //                     onWorksHover: false,
                                                  //                     onContactsHover: contactTextHover));
                                                  //               },
                                                  //               onPressed: () {
                                                  //                 pageController.animateToPage(3,
                                                  //                     duration: const Duration(milliseconds: 800),
                                                  //                     curve: Curves.easeIn);
                                                  //               },
                                                  //               child: Text('Conatct',
                                                  //                   style: TextStyle(
                                                  //                       fontSize: state.onContactsHover ? 17 : 15,
                                                  //                       color: state.onContactsHover
                                                  //                           ? AppColors.kTextWhiteColor
                                                  //                           : AppColors.kLigtGreyColor,
                                                  //                       fontFamily: AppFonts.monaSansBold))),
                                                  //         ),
                                                  //       ],
                                                  //     );
                                                  //   }),
                                                  // ),
                                        













                                        // class HomeContent extends StatefulWidget {
                                        //   const HomeContent({super.key});

                                        //   @override
                                        //   State<HomeContent> createState() => _HomeContentState();
                                        // }

                                        // //ClipPath(
                                        // // clipper: LeftWaveClipper(),
                                        // class _HomeContentState extends State<HomeContent> {
                                        //   @override
                                        //   void initState() {
                                        //     // TODO: implement initState
                                        //     super.initState();
                                        //     // precacheImages();
                                        //   }

                                        //   // void precacheImages() {
                                        //   //   precacheImage(const AssetImage('assets/images/bg_image1.jpg'), context);
                                        //   // }

                                        //   @override
                                        //   Widget build(BuildContext context) {
                                        //     return Container(
                                        //       decoration: const BoxDecoration(
                                        //         // image: DecorationImage(
                                        //         //   image: AssetImage('assets/images/bg_image5.jpg'),
                                        //         //   fit: BoxFit.cover,
                                        //         // ),
                                        //         color: AppColors.kdepthGreyColor,
                                        //       ),
                                        //       child: Column(
                                        //         children: [
                                        //           // kSizedBox40,
                                        //           SizedBox(
                                        //             child: Row(
                                        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        //               children: [
                                        //                 Expanded(
                                        //                   child: Column(
                                        //                     mainAxisAlignment: MainAxisAlignment.start,
                                        //                     children: [
                                        //                       kSizedBox35,
                                        //                       const Text('WELCOME',
                                        //                           style: TextStyle(
                                        //                               fontWeight: FontWeight.w800,
                                        //                               fontSize: 18,
                                        //                               letterSpacing: 5,
                                        //                               fontFamily: AppFonts.azonixFont,
                                        //                               color: AppColors.kLigtGreyColor)),
                                        //                       kSizedBox20,
                                        //                       // const Text('FLUTTER DEVELOPER',
                                        //                       //     textAlign: TextAlign.center,
                                        //                       //     style: TextStyle(
                                        //                       //       fontSize: 25,
                                        //                       //       fontWeight: FontWeight.w800,
                                        //                       //       color: AppColors.kLigtGreyColor,
                                        //                       //       letterSpacing: 1,
                                        //                       //     )),
                                        //                       //        kSizedBox50,
                                        //                       RichText(
                                        //                         textAlign: TextAlign.center,
                                        //                         text: const TextSpan(
                                        //                           text:
                                        //                               "Explore how my expertise in Flutter development can elevate your projects.\n Whether you're seeking a skilled freelancer or a dedicated team member, I'm here to bring your ideas to life.",
                                        //                           style: TextStyle(
                                        //                               fontSize: 17,
                                        //                               letterSpacing: 0.5,
                                        //                               fontWeight: FontWeight.w800,
                                        //                               color: AppColors.kTextWhiteColor,
                                        //                               fontFamily: AppFonts.monaSansNormal),
                                        //                           children: [
                                        //                             TextSpan(
                                        //                                 text: '',
                                        //                                 style: TextStyle(
                                        //                                     fontSize: 16,
                                        //                                     letterSpacing: 1,
                                        //                                     fontWeight: FontWeight.w800,
                                        //                                     color: AppColors.kgroundGreyColor,
                                        //                                     fontFamily: AppFonts.monaSansLight)),
                                        //                           ],
                                        //                         ),
                                        //                       ),
                                        //                     ],
                                        //                   ),
                                        //                 ),
                                        //               ],
                                        //             ),
                                        //           ),
                                        //           // kSizedBox200,
                                        //           SizedBox(
                                        //             height: MediaQuery.sizeOf(context).height / 4,
                                        //           ),
                                        //           Expanded(
                                        //             child: BlocBuilder<HomeContentBloc, HomeContentState>(
                                        //                 builder: (context, state) {
                                        //               return Row(
                                        //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        //                 children: [
                                        //                   SizedBox(
                                        //                     width: 150,
                                        //                     child: TextButton(
                                        //                         onHover: (aboutMeTextHover) {
                                        //                           print(aboutMeTextHover);
                                        //                           context.read<HomeContentBloc>().add(OnHoverEvent(
                                        //                               onProfileHover: aboutMeTextHover,
                                        //                               onWorksHover: false,
                                        //                               onContactsHover: false));
                                        //                         },
                                        //                         onPressed: () {
                                        //                           pageController.animateToPage(1,
                                        //                               duration: const Duration(milliseconds: 900),
                                        //                               curve: Curves.easeIn);
                                        //                         },
                                        //                         child: Text('About me',
                                        //                             style: TextStyle(
                                        //                                 fontSize: state.onProfileHover ? 17 : 15,
                                        //                                 color: state.onProfileHover
                                        //                                     ? AppColors.kTextWhiteColor
                                        //                                     : AppColors.kLigtGreyColor,
                                        //                                 fontFamily: AppFonts.monaSansBold))),
                                        //                   ),
                                        //                   SizedBox(
                                        //                     width: 150,
                                        //                     //  width: MediaQuery.sizeOf(context).width / 8,
                                        //                     child: TextButton(
                                        //                         onHover: (worksTextHover) {
                                        //                           context.read<HomeContentBloc>().add(OnHoverEvent(
                                        //                               onProfileHover: false,
                                        //                               onWorksHover: worksTextHover,
                                        //                               onContactsHover: false));
                                        //                         },
                                        //                         onPressed: () {
                                        //                           pageController.animateToPage(2,
                                        //                               duration: const Duration(milliseconds: 800),
                                        //                               curve: Curves.easeIn);
                                        //                         },
                                        //                         child: Text('Works',
                                        //                             style: TextStyle(
                                        //                                 fontSize: state.onWorksHover ? 17 : 15,
                                        //                                 color: state.onWorksHover
                                        //                                     ? AppColors.kTextWhiteColor
                                        //                                     : AppColors.kLigtGreyColor,
                                        //                                 fontFamily: AppFonts.monaSansBold))),
                                        //                   ),
                                        //                   SizedBox(
                                        //                     width: 150,
                                        //                     // width: MediaQuery.sizeOf(context).width / 8,
                                        //                     child: TextButton(
                                        //                         onHover: (contactTextHover) {
                                        //                           print(contactTextHover);
                                        //                           context.read<HomeContentBloc>().add(OnHoverEvent(
                                        //                               onProfileHover: false,
                                        //                               onWorksHover: false,
                                        //                               onContactsHover: contactTextHover));
                                        //                         },
                                        //                         onPressed: () {
                                        //                           pageController.animateToPage(3,
                                        //                               duration: const Duration(milliseconds: 800),
                                        //                               curve: Curves.easeIn);
                                        //                         },
                                        //                         child: Text('Conatct',
                                        //                             style: TextStyle(
                                        //                                 fontSize: state.onContactsHover ? 17 : 15,
                                        //                                 color: state.onContactsHover
                                        //                                     ? AppColors.kTextWhiteColor
                                        //                                     : AppColors.kLigtGreyColor,
                                        //                                 fontFamily: AppFonts.monaSansBold))),
                                        //                   ),
                                        //                 ],
                                        //               );
                                        //             }),
                                        //           ),

                                        //           //  AnimatedDivider()
                                        //         ],
                                        //       ),
                                        //     );
                                        //   }
                                        // }




                                        //     gradient: LinearGradient(
                                        //   begin: Alignment.topRight,
                                        //   end: Alignment.bottomLeft,
                                        //   stops: [
                                        //     0.1,
                                        //     0.4,
                                        //     0.6,
                                        //     0.9,
                                        //   ],
                                        //   colors: [
                                        //     Colors.yellow,
                                        //     Colors.red,
                                        //     Colors.indigo,
                                        //     Colors.teal,
                                        //   ],
                                        // )





































                                        // class HomeContent extends StatefulWidget {
                                        //   const HomeContent({super.key});

                                        //   @override
                                        //   State<HomeContent> createState() => _HomeContentState();
                                        // }

                                        // //ClipPath(
                                        // // clipper: LeftWaveClipper(),
                                        // class _HomeContentState extends State<HomeContent> {
                                        //   @override
                                        //   Widget build(BuildContext context) {
                                        //     return Container(
                                        //       color: AppColors.kmildIndigoColor,
                                        //       child: Column(
                                        //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        //         children: [
                                        //           Expanded(
                                        //             flex: 12,
                                        //             child: Container(
                                        //               padding:
                                        //                   const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                                        //               decoration: const BoxDecoration(
                                        //                 color: AppColors.kDarkTealColor,
                                        //               ),
                                        //               child: Wrap(
                                        //                 children: [
                                        //                   SizedBox(
                                        //                     child: Row(
                                        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        //                       children: [
                                        //                         Expanded(
                                        //                           child: Column(
                                        //                             mainAxisAlignment: MainAxisAlignment.start,
                                        //                             children: [
                                        //                               const Text('WELCOME',
                                        //                                   style: TextStyle(
                                        //                                       fontWeight: FontWeight.w800,
                                        //                                       fontSize: 56,
                                        //                                       letterSpacing: 5,
                                        //                                       fontFamily: AppFonts.azonixFont,
                                        //                                       color: AppColors.kLigtGreyColor)),
                                        //                               kSizedBox20,
                                        //                               const Text('FLUTTER DEVELOPER',
                                        //                                   textAlign: TextAlign.center,
                                        //                                   style: TextStyle(
                                        //                                     fontSize: 25,
                                        //                                     fontWeight: FontWeight.w800,
                                        //                                     color: AppColors.kLigtGreyColor,
                                        //                                     letterSpacing: 1,
                                        //                                   )),
                                        //                               kSizedBox50,
                                        //                               RichText(
                                        //                                 textAlign: TextAlign.center,
                                        //                                 text: const TextSpan(
                                        //                                   text:
                                        //                                       "Explore how my expertise in Flutter development can elevate your projects.\n Whether you're seeking a skilled freelancer or a dedicated team member, I'm here to bring your ideas to life.",
                                        //                                   style: TextStyle(
                                        //                                       fontSize: 17,
                                        //                                       letterSpacing: 0.5,
                                        //                                       fontWeight: FontWeight.w800,
                                        //                                       color: AppColors.kTextBlackColor,
                                        //                                       fontFamily: AppFonts.monaSansNormal),
                                        //                                   children: [
                                        //                                     TextSpan(
                                        //                                         text: '',
                                        //                                         style: TextStyle(
                                        //                                             fontSize: 16,
                                        //                                             letterSpacing: 1,
                                        //                                             fontWeight: FontWeight.w800,
                                        //                                             color: AppColors.kgroundGreyColor,
                                        //                                             fontFamily:
                                        //                                                 AppFonts.monaSansLight)),
                                        //                                   ],
                                        //                                 ),
                                        //                               ),
                                        //                               kSizedBox200,
                                        //                             ],
                                        //                           ),
                                        //                         ),
                                        //                       ],
                                        //                     ),
                                        //                   ),

                                        //                   Row(
                                        //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        //                     children: [
                                        //                       // GestureDetector(
                                        //                       //   onTap: () {
                                        //                       //     pageController.animateToPage(3,
                                        //                       //         duration: const Duration(milliseconds: 800),
                                        //                       //         curve: Curves.easeIn);
                                        //                       //   },
                                        //                       // child:
                                        //                       TextButton(
                                        //                           onHover: (aboutMeTextHover) {
                                        //                             print(aboutMeTextHover);
                                        //                           },
                                        //                           onPressed: () {
                                        //                             pageController.animateToPage(1,
                                        //                                 duration: const Duration(milliseconds: 900),
                                        //                                 curve: Curves.easeIn);
                                        //                           },
                                        //                           child: const Text('About me',
                                        //                               style: TextStyle(
                                        //                                   fontSize: 15,
                                        //                                   color: AppColors.kLigtGreyColor,
                                        //                                   fontFamily: AppFonts.monaSansBold))),
                                        //                       TextButton(
                                        //                           onHover: (worksTextHover) {
                                        //                             print(worksTextHover);
                                        //                           },
                                        //                           onPressed: () {
                                        //                             pageController.animateToPage(2,
                                        //                                 duration: const Duration(milliseconds: 800),
                                        //                                 curve: Curves.easeIn);
                                        //                           },
                                        //                           child: const Text('Works',
                                        //                               style: TextStyle(
                                        //                                   fontSize: 15,
                                        //                                   color: AppColors.kLigtGreyColor,
                                        //                                   fontFamily: AppFonts.monaSansBold))),
                                        //                       TextButton(
                                        //                           onHover: (contactTextHover) {
                                        //                             print(contactTextHover);
                                        //                           },
                                        //                           onPressed: () {
                                        //                             pageController.animateToPage(3,
                                        //                                 duration: const Duration(milliseconds: 800),
                                        //                                 curve: Curves.easeIn);
                                        //                           },
                                        //                           child: const Text('Conatct',
                                        //                               style: TextStyle(
                                        //                                   fontSize: 15,
                                        //                                   color: AppColors.kLigtGreyColor,
                                        //                                   fontFamily: AppFonts.monaSansBold))),
                                        //                     ],
                                        //                   ),
                                        //                   //  AnimatedDivider()
                                        //                 ],
                                        //               ),
                                        //             ),
                                        //           ),
                                        //           Expanded(
                                        //               flex: 1,
                                        //               child: Container(
                                        //                 color: AppColors.kmildIndigoColor,
                                        //               ))
                                        //         ],
                                        //       ),
                                        //     );
                                        //   }
                                        // }

