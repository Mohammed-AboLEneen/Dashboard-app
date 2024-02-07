import 'package:dash_board_app/cores/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/models/transaction_item_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionItemModel transactionItemModel;

  const TransactionItem({super.key, required this.transactionItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFAFAFA)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
        subtitle: Text(
          transactionItemModel.subtitle,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          transactionItemModel.price,
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: transactionItemModel.priceColor),
        ),
      ),
    );
  }
}
