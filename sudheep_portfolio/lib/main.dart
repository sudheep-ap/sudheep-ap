import 'package:flutter/material.dart';
import 'package:sudheep_portfolio/presentation/Home/home_screen.dart';

void main() {
  runApp(const SudheepPortfolio());
}

class SudheepPortfolio extends StatelessWidget {
  const SudheepPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sudheep Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
