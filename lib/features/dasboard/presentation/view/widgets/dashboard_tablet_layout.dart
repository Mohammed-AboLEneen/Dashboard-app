import 'package:dash_board_app/features/dasboard/presentation/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

import 'dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 3, child: DashBoardMobileLayout())
      ],
    );
  }
}
