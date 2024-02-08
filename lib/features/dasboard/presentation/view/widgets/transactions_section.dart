import 'package:dash_board_app/cores/utils/styles.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/models/transaction_item_model.dart';

class TransactionsSection extends StatefulWidget {
  const TransactionsSection({super.key});

  @override
  State<TransactionsSection> createState() => _TransactionsSectionState();
}

class _TransactionsSectionState extends State<TransactionsSection> {
  final List<TransactionItemModel> transactions = [
    TransactionItemModel(
        title: 'Cash Withdrawal',
        subtitle: '5 Fab, 2024 ar 2:55 AM',
        price: r'$20,129',
        priceColor: const Color(0xffF3735E)),
    TransactionItemModel(
        title: 'Landing Page project',
        subtitle: '13 Jun, 2024 at 1:48 PM',
        price: r'$2,000',
        priceColor: const Color(0xff7DD97B)),
    TransactionItemModel(
        title: 'Juni Mobile App project',
        subtitle: '12 Fab, 2024 at 2:58 AM',
        price: r'$20,129',
        priceColor: const Color(0xff7DD97B)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            const Spacer(),
            Text(
              'See all',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          '20 February 2024',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: transactions
              .map((e) => TransactionItem(transactionItemModel: e))
              .toList(),
        )
      ],
    );
  }
}
