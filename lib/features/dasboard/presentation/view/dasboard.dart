import 'package:dash_board_app/features/dasboard/presentation/view/widgets/adaptive_layout_builder.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/dash_board_desktop_layout.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/dashboard_mobile_layout.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/dashboard_tablet_layout.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../../../../cores/utils/size_config.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
