import 'package:dash_board_app/features/dasboard/presentation/view/widgets/custom_drawer_avatar_info.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/models/drawer_item_model.dart';
import '../../../../../cores/utils/Images_assets.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with TickerProviderStateMixin {
  int currentIndex = 0;
  final drawerItemsList = [
    DrawerItemModel(title: 'DashBoard', icon: AssetsImages.imagesDashboard),
    DrawerItemModel(
        title: 'My Transaction', icon: AssetsImages.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', icon: AssetsImages.imagesStatistics),
    DrawerItemModel(
        title: 'Wallet Account', icon: AssetsImages.imagesWalletAccount),
    DrawerItemModel(
        title: 'My Investments', icon: AssetsImages.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width * .6,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomDrawerAvatarInfo(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: CustomDrawerItem(drawerItemsList[index],
                    isActive: index == currentIndex),
              ),
            ),
            itemCount: 5,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CustomDrawerItem(
                    DrawerItemModel(
                      title: 'Settings',
                      icon: AssetsImages.imagesSettings,
                    ),
                    isActive: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: CustomDrawerItem(
                    DrawerItemModel(
                        title: 'Logout', icon: AssetsImages.imagesLogout),
                    isActive: false,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
