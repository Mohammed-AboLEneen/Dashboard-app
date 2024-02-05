import 'package:dash_board_app/cores/models/custom_all_expenses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../cores/utils/Images_assets.dart';
import '../../../../../cores/utils/styles.dart';

class CustomAllExpensesItem extends StatelessWidget {
  final CustomAllExpensesItemModel customAllExpensesItemModel;
  final bool isActive;

  const CustomAllExpensesItem(
      {super.key,
      required this.customAllExpensesItemModel,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive ? const Color(0xff4EB7F2) : Colors.white,
          border: Border.all(color: const Color(0xffF1F1F1), width: 1)),
      // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      padding: const EdgeInsets.only(
        left: 16,
        right: 20,
        top: 20,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xffF1F1F1),
                radius: 30,
                child: SvgPicture.asset(
                  customAllExpensesItemModel.image,
                  width: 32,
                  height: 32,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 24,
                color: isActive ? Colors.white : null,
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            customAllExpensesItemModel.title,
            style: isActive
                ? AppStyles.styleSemiBold16(context)
                    .copyWith(color: Colors.white)
                : AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(customAllExpensesItemModel.date,
              style: isActive
                  ? AppStyles.styleRegular14(context)
                      .copyWith(color: const Color(0xffFAFAFA))
                  : AppStyles.styleRegular14(context)),
          const SizedBox(
            height: 10,
          ),
          Text(customAllExpensesItemModel.price,
              style: isActive
                  ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold24(context)),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
