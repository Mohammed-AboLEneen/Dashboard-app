import 'dart:developer';

import 'package:dash_board_app/cores/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../cores/utils/styles.dart';

class CustomDrawerItem extends StatelessWidget {
  final DrawerItemModel itemModel;
  final bool isActive;

  const CustomDrawerItem(this.itemModel, {super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(
          itemModel.icon,
          width: 24,
          height: 24,
        ),
        title: Text(
          itemModel.title,
          style: isActive
              ? AppStyles.styleBold16(context)
              : AppStyles.styleRegular16(context),
        ),
        trailing: LayoutBuilder(
          builder: (context, constraints) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff4EB7F2),
              ),
              onEnd: () {
                log('hello');
              },
              width: 3.5,
              height: isActive ? constraints.maxHeight : 0,
            );
          },
        ));
  }
}
