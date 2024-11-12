// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Utils/constants/constants.dart';

class SlidingBanner extends StatefulWidget {
  const SlidingBanner({Key? key}) : super(key: key);

  @override
  State<SlidingBanner> createState() => _SlidingBannerState();
}

class _SlidingBannerState extends State<SlidingBanner> {
  int _current = 0;
  // final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = [
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EnlargedPage()),
            );
          },
          child: Hero(
            tag: 'hero-tag',
            child: Container(
              // height: 100,
              // width: 100,
              color: AppColors.kAccentOrangeyolor,
              child:
                  Image.asset('assets/images/bg_image1.jpg', fit: BoxFit.cover),
            ),
          ),
        ),
      ),
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EnlargedPage()),
            );
          },
          child: Container(
            // height: 100,
            // width: 100,
            color: AppColors.kAccentOrangeyolor,
            child: Image.asset(
              'assets/images/bg_image1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EnlargedPage()),
            );
          },
          child: Container(
            // height: 100,
            // width: 100,
            color: AppColors.kAccentOrangeyolor,
            child:
                Image.asset('assets/images/bg_image1.jpg', fit: BoxFit.cover),
          ),
        ),
      ),
    ];

    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CarouselView(
          //   items: imageSliders,
          //   carouselController: _controller,
          //   options: CarouselOptions(
          //       enlargeFactor: 0,
          //       autoPlayInterval: const Duration(seconds: 5),
          //       height: 500,
          //       autoPlay: true,
          //       enlargeCenterPage: true,
          //       aspectRatio: 2 / 2,
          //       onPageChanged: (index, reason) {
          //         setState(() {
          //           _current = index;
          //         });
          //       }),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageSliders.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () {}, // => _controller.animateToPage(entry.key),
                  child: Container(
                    height: 10.0,
                    width: _current == entry.key ? 40 : 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: (Colors.white)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

//Theme.of(context).brightness == Brightness.dark
// ? Colors.white
// : kCategoryRupeeColor

class EnlargedPage extends StatelessWidget {
  const EnlargedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enlarged Page'),
      ),
      body: Hero(
        tag: 'hero-tag',
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(60.0)),
          ),
          width: 100.0, // Enlarged width
          height: 800.0, // Enlarged height
        ),
      ),
    );
  }
}


// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import '../../Utils/constants/constants.dart';

// class SlidingBanner extends StatefulWidget {
//   const SlidingBanner({Key? key}) : super(key: key);

//   @override
//   State<SlidingBanner> createState() => _SlidingBannerState();
// }

// class _SlidingBannerState extends State<SlidingBanner> {
//   int _current = 0;
//   final CarouselController _controller = CarouselController();

//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> imageSliders = [
//       ClipRRect(
//         borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//         child: Container(
//           height: 100,
//           width: 100,
//           color: AppColors.kAccentOrangeyolor,
//         ),
//       ),
//       ClipRRect(
//         borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//         child: Container(
//           height: 100,
//           width: 100,
//           color: AppColors.kAccentOrangeyolor,
//         ),
//       ),
//       ClipRRect(
//         borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//         child: Container(
//           height: 100,
//           width: 100,
//           color: AppColors.kAccentOrangeyolor,
//         ),
//       ),
//     ];

//     return SizedBox(
//       height: 300,
//       width: 200,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CarouselSlider(
//             items: imageSliders,
//             carouselController: _controller,
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: imageSliders.asMap().entries.map((entry) {
//                 return GestureDetector(
//                     onTap: () => _controller.animateToPage(entry.key),
//                     child: Container(
//                       height: 10.0,
//                       width: _current == entry.key ? 40 : 10.0,
//                       margin: const EdgeInsets.symmetric(
//                           vertical: 8.0, horizontal: 4.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: (Colors.white
//                             .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//                       ),
//                     ));
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//Theme.of(context).brightness == Brightness.dark
                              // ? Colors.white
                              // : kCategoryRupeeColor
