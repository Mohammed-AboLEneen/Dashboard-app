import 'package:dash_board_app/cores/models/income_pichart_item_model.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/utils/styles.dart';

class IncomeItem extends StatelessWidget {
  final IncomePiChartItemModel itemModel;

  const IncomeItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: ListTile(
        leading: Container(
          width: 12,
          height: 12,
          decoration:
              ShapeDecoration(color: itemModel.color, shape: OvalBorder()),
        ),
        title: Text(
          itemModel.title,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          '${itemModel.value}%',
          style: AppStyles.styleMedium16(context),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
