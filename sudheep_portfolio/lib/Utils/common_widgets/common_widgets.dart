//To add shimmer effect while loading data
import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
import '../constants/constants.dart';

// class ShimmerEffect extends StatelessWidget {
//   final Widget child;
//   const ShimmerEffect({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//         baseColor: AppColors.kGreyColor,
//         highlightColor: AppColors.kLightGreyColor,
//         period: const Duration(milliseconds: 1500),
//         child: child);
//   }
// }

// Widget kLoadingIndicator = Center(

//     child: SpinKitDualRing(

//   //SpinKitFadingCube SpinKitDualRing SpinKitWave SpinKitThreeBounce SpinKitFadingCircle

//   //SpinKitDualRing SpinKitThreeBounce

//   color: kMainGreenColor,

//   // size: 50.0,

// ));

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();

//     // Move to the top-left corner
//     path.moveTo(0, 0);

//     // Line to the top-right corner
//     path.lineTo(size.width, 0);

//     // Line to the bottom-right corner
//     path.lineTo(size.width, size.height);

//     // Line to the bottom-left corner with an inward inclination
//     path.lineTo(size.width * 0.7, size.height);

//     // Line to the top-left corner with an inward inclination
//     path.lineTo(0, size.height * 0.3);

//     // Close the path to form a closed shape
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }

class LeftWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          size.width / 4, size.height - 60, size.width / 2, size.height)
      ..quadraticBezierTo(
          3 * size.width / 4, size.height + 20, size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

//
class RightWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(size.width, size.height) // Move to the bottom-right corner
      ..quadraticBezierTo(3 * size.width / 4, size.height - 60, size.width / 2,
          size.height) // Quadratic Bezier curve
      ..quadraticBezierTo(size.width / 4, size.height + 20, 0,
          size.height) // Quadratic Bezier curve to the bottom-left corner
      ..lineTo(0, 0) // Line to the top-left corner
      ..lineTo(size.width, 0) // Line to the top-right corner
      ..close(); // Close the path to form a closed shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

//

class TopLeftToRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Move to the top-left corner
    path.moveTo(0, 0);

    // Line to the top-right corner with an upward inclination
    path.lineTo(size.width * 0.3, 0);

    // Line to the top-right corner
    path.lineTo(size.width, size.height * 0.3);

    // Line to the bottom-right corner
    path.lineTo(size.width, size.height);

    // Line to the bottom-left corner
    path.lineTo(0, size.height);

    // Close the path to form a closed shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

//
class CombinedWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Top-right wave
    path.moveTo(size.width, 0); // Move to the top-right corner
    path.quadraticBezierTo(
        3 * size.width / 4, 60, size.width / 2, 0); // Quadratic Bezier curve
    path.quadraticBezierTo(size.width / 4, -20, 0,
        0); // Quadratic Bezier curve to the top-left corner

    // Bottom-right wave
    path.lineTo(0, size.height); // Line to the bottom-left corner
    path.quadraticBezierTo(size.width / 4, size.height - 60, size.width / 2,
        size.height); // Quadratic Bezier curve
    path.quadraticBezierTo(3 * size.width / 4, size.height + 20, size.width,
        size.height); // Quadratic Bezier curve to the bottom-right corner

    // Close the path to form a closed shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

//

class TopRightWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(size.width, 0) // Move to the top-right corner
      ..quadraticBezierTo(
          3 * size.width / 4, 60, size.width / 2, 0) // Quadratic Bezier curve
      ..quadraticBezierTo(size.width / 4, -20, 0,
          0) // Quadratic Bezier curve to the top-left corner
      ..lineTo(0, size.height) // Line to the bottom-left corner
      ..lineTo(size.width, size.height) // Line to the bottom-right corner
      ..close(); // Close the path to form a closed shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

//
class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, 0) // Move to the top-left corner
      ..quadraticBezierTo(
          size.width / 4, 60, size.width / 2, 0) // Quadratic Bezier curve
      ..quadraticBezierTo(3 * size.width / 4, -20, size.width,
          0) // Quadratic Bezier curve to the top-right corner
      ..lineTo(size.width, size.height) // Line to the bottom-right corner
      ..lineTo(0, size.height) // Line to the bottom-left corner
      ..close(); // Close the path to form a closed shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// Linear Progress Indicator

Widget kLinearLoadingIndicator = LinearProgressIndicator(
    borderRadius: BorderRadius.circular(2),
    color: AppColors.kButtonYellowColor,
    backgroundColor: AppColors.kButtonYellowColor);

const Widget kSizedBox10 = SizedBox(height: 10);
const Widget kSizedBox15 = SizedBox(height: 15);
const Widget kSizedBox20 = SizedBox(height: 20);
const Widget kSizedBox25 = SizedBox(height: 25);
const Widget kSizedBox30 = SizedBox(height: 30);
const Widget kSizedBox35 = SizedBox(height: 35);
const Widget kSizedBox40 = SizedBox(height: 40);
const Widget kSizedBox45 = SizedBox(height: 45);
const Widget kSizedBox50 = SizedBox(height: 50);
const Widget kSizedBox55 = SizedBox(height: 55);
const Widget kSizedBox60 = SizedBox(height: 60);
const Widget kSizedBox65 = SizedBox(height: 65);
const Widget kSizedBox70 = SizedBox(height: 70);
const Widget kSizedBox75 = SizedBox(height: 75);
const Widget kSizedBox80 = SizedBox(height: 80);
const Widget kSizedBox85 = SizedBox(height: 85);
const Widget kSizedBox90 = SizedBox(height: 90);
const Widget kSizedBox95 = SizedBox(height: 95);
const Widget kSizedBox100 = SizedBox(height: 100);
const Widget kSizedBox150 = SizedBox(height: 150);
const Widget kSizedBox200 = SizedBox(height: 200);
// Widget skeletonContainer(height, width) {
//   return Container(
//     color: AppColors.kGreyColor,
//     height: height,
//     width: width,
//   );
// }

class DottedDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double thickness;
  final double gap;

  const DottedDivider({
    super.key,
    this.color = AppColors.kButtonYellowColor,
    this.height = 1,
    this.thickness = 3,
    this.gap = 2,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final int numberOfDots = (width / (thickness + gap)).floor();

        return Row(
          children: List.generate(
            numberOfDots,
            (index) {
              return Container(
                width: thickness,
                height: height,
                color: color,
                margin: EdgeInsets.only(right: gap),
              );
            },
          ),
        );
      },
    );
  }
}

class ContentPadding extends StatelessWidget {
  final Widget child;
  const ContentPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: child,
    );
  }
}
