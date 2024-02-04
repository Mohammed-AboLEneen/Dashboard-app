import 'package:dash_board_app/features/dasboard/presentation/view/drawer.dart';
import 'package:flutter/material.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Row(
        children: [Expanded(child: CustomDrawer())],
      ),
    );
  }
}
