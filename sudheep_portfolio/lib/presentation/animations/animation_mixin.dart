import 'package:flutter/material.dart';

mixin AnimationMixin on TickerProviderStateMixin {
  late AnimationController animController;
  late Animation<Offset> animOffset;

  void animateHomeContent() {
    animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: animController);
    animOffset = Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
        .animate(curve);
    animController.forward();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
