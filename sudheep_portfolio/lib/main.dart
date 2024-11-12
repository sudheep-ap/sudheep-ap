import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudheep_portfolio/Utils/constants/constants.dart';
import 'package:sudheep_portfolio/presentation/Home/contents/Home_content/bloc/home_content_bloc.dart';
import 'package:sudheep_portfolio/presentation/Home/home_screen.dart';

void main() {
  runApp(const SudheepPortfolio());
}

class SudheepPortfolio extends StatelessWidget {
  const SudheepPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeContentBloc>(
            create: (context) => HomeContentBloc(), lazy: false),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sudheep Portfolio',
        theme: ThemeData(
          fontFamily: AppFonts.poppinsBold,
          primaryColor: AppColors.kTextWhiteColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
