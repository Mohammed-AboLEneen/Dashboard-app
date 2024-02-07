import 'package:dash_board_app/cores/utils/styles.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/card_item.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/custom_expandable_pageview.dart';
import 'package:flutter/material.dart';

import 'custom_smooth_indicator.dart';

class CardSection extends StatefulWidget {
  const CardSection({super.key});

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomExpandablePageView(
            item: const CardPageViewItem(),
            pageController: pageController,
            count: 3),
        const SizedBox(
          height: 15,
        ),
        CustomSmoothIndicator(pageController: pageController),
      ],
    );
  }
}
