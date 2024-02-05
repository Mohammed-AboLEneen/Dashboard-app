import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../cores/models/last_transaction_model.dart';

import '../../../../../cores/utils/styles.dart';

class LastTransactionsItem extends StatelessWidget {
  final LastTransactionModel lastTransactionModel;

  const LastTransactionsItem({super.key, required this.lastTransactionModel});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffFAFAFA)),
        child: ListTile(
          leading: SvgPicture.asset(
            lastTransactionModel.image,
            width: 48,
            height: 48,
          ),
          title: Text(lastTransactionModel.title,
              style: AppStyles.styleMedium16(context)
                  .copyWith(fontWeight: FontWeight.w700)),
          subtitle: Text(lastTransactionModel.subtitle,
              style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
