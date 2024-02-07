import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CustomExpandablePageView extends StatelessWidget {
  final Widget item;
  final PageController pageController;
  final int count;

  const CustomExpandablePageView(
      {super.key,
      required this.item,
      required this.pageController,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => item,
      ),
    );
  }
}
