import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  final PageController pageController;

  const CustomSmoothIndicator({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: const ExpandingDotsEffect(
          dotHeight: 7,
          dotWidth: 9,
          activeDotColor: Color(0xff4EB7F2),
          dotColor: Color(0xffE8E8E8)),
    );
  }
}
