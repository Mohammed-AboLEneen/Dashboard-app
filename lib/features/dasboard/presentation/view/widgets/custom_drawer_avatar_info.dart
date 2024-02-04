import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../cores/utils/Images_assets.dart';
import '../../../../../cores/utils/styles.dart';

class CustomDrawerAvatarInfo extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomDrawerAvatarInfo(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          AssetsImages.imagesAvatar3,
          width: 32,
          height: 32,
        ),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
