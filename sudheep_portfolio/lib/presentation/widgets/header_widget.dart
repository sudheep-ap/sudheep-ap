import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Home_content/bloc/home_content_bloc.dart';

import '../../Utils/constants/constants.dart';
import '../Home/contents/Home_content/bloc/home_content_state.dart';
import '../Home/home_screen.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: BlocBuilder<HomeContentBloc, HomeContentState>(
              builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 150,
                  child: TextButton(
                      onHover: (aboutMeTextHover) {
                        context.read<HomeContentBloc>().add(OnHoverEvent(
                            onProfileHover: aboutMeTextHover,
                            onWorksHover: false,
                            onContactsHover: false));
                      },
                      onPressed: () {
                        pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 900),
                            curve: Curves.easeIn);
                      },
                      child: Text('about me',
                          style: TextStyle(
                              fontSize: state.onProfileHover ? 17 : 15,
                              color: state.onProfileHover
                                  ? AppColors.kTextWhiteColor
                                  : AppColors.kLigtGreyColor,
                              fontFamily: AppFonts.monaSansBold))),
                ),
                SizedBox(
                  width: 150,
                  //  width: MediaQuery.sizeOf(context).width / 8,
                  child: TextButton(
                      onHover: (worksTextHover) {
                        context.read<HomeContentBloc>().add(OnHoverEvent(
                            onProfileHover: false,
                            onWorksHover: worksTextHover,
                            onContactsHover: false));
                      },
                      onPressed: () {
                        pageController.animateToPage(2,
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeIn);
                      },
                      child: Text('works',
                          style: TextStyle(
                              fontSize: state.onWorksHover ? 17 : 15,
                              color: state.onWorksHover
                                  ? AppColors.kTextWhiteColor
                                  : AppColors.kLigtGreyColor,
                              fontFamily: AppFonts.monaSansBold))),
                ),
                SizedBox(
                  width: 150,
                  // width: MediaQuery.sizeOf(context).width / 8,
                  child: TextButton(
                      onHover: (contactTextHover) {
                        context.read<HomeContentBloc>().add(OnHoverEvent(
                            onProfileHover: false,
                            onWorksHover: false,
                            onContactsHover: contactTextHover));
                      },
                      onPressed: () {
                        pageController.animateToPage(3,
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeIn);
                      },
                      child: Text('conatct',
                          style: TextStyle(
                              fontSize: state.onContactsHover ? 17 : 15,
                              color: state.onContactsHover
                                  ? AppColors.kTextWhiteColor
                                  : AppColors.kLigtGreyColor,
                              fontFamily: AppFonts.monaSansBold))),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
