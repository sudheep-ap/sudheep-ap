import 'package:flutter/material.dart';
import '../../../../Utils/common_widgets/common_widgets.dart';
import '../../../../Utils/constants/constants.dart';

class ContactMeContent extends StatefulWidget {
  const ContactMeContent({super.key});

  @override
  State<ContactMeContent> createState() => _ContactMeContentState();
}

class _ContactMeContentState extends State<ContactMeContent>
    with TickerProviderStateMixin {
  late AnimationController animController;
  late Animation<Offset> animOffset;
  @override
  void initState() {
    super.initState();
    animateHomeContent();
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(
        color: AppColors.bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          kSizedBox80,
          const Text('GET IN TOUCH',
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 45, horizontal: 35),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                          "Have a project in mind or want to discuss how I can contribute to your team ?  I'd love to hear from you.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 17,
                              letterSpacing: 0.7,
                              fontFamily: AppFonts.monaSansLight,
                              color: AppColors.textColor)))),
            ],
          ),
          kSizedBox200, kSizedBox200
          //   CarouselSlider(
          //   items: ,
          //   //carouselController: _controller,
          //   options: CarouselOptions(
          //       autoPlay: true,
          //       enlargeCenterPage: true,
          //       aspectRatio: 2,
          //       onPageChanged: (index, reason) {
          //         // setState(() {
          //         //   _current = index;
          //         // });
          //       }),
          // ),
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

// Page 4: Contact
// Get In Touch

// Have a project in mind or want to discuss how I can contribute to your team? I'd love to hear from you.

// Contact Information:

// Email: sudheep@example.com
// LinkedIn: [LinkedIn Profile]
// GitHub: [GitHub Profile]
// Feel free to reach out, and let's turn your ideas into reality!



    // gradient: LinearGradient(
    //     begin: Alignment.topCenter,
    //     end: Alignment.bottomCenter,
    //     colors: [
    //       Colors.green,
    //       Colors.black,
    //     ],
    //   )


    // SmoothPageIndicator(
    //             controller: controller,
    //             count: pages.length,
    //             effect: const WormEffect(
    //               dotHeight: 16,
    //               dotWidth: 16,
    //               type: WormType.thinUnderground,
    //             ),