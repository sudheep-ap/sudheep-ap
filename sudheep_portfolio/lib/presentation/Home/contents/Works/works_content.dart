import 'package:flutter/material.dart';
import 'package:sudheep_portfolio/Utils/constants/constants.dart';
import '../../../../Utils/common_widgets/common_widgets.dart';
import '../../../widgets/sliding_banner.dart';

class WorksContent extends StatefulWidget {
  const WorksContent({super.key});

  @override
  State<WorksContent> createState() => _WorksContentState();
}

class _WorksContentState extends State<WorksContent>
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

  //  child: ClipPath(
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
          kSizedBox40,
          const Text('EXPLORE MY CREATIONS',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  letterSpacing: 1,
                  fontFamily: AppFonts.monaSansBold,
                  color: AppColors.textWhiteColor)),
          kSizedBox30,
          const Text(
            'Dive into my Flutter creations—a fusion of sleek design and powerful functionality. Explore how I bring ideas to life with elegance and precision.',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 17,
                letterSpacing: 0.7,
                fontFamily: AppFonts.monaSansLight,
                color: AppColors.textColor),
            textAlign: TextAlign.center,
          ),
          kSizedBox30,
          SlidingBanner()
        ],
      ),
    );
  }
}
