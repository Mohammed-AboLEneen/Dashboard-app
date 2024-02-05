import 'package:flutter/material.dart';

import '../../../../../cores/models/last_transaction_model.dart';
import '../../../../../cores/utils/Images_assets.dart';
import '../../../../../cores/utils/styles.dart';
import 'last_transactions_item.dart';

class LastTransactions extends StatefulWidget {
  const LastTransactions({super.key});

  @override
  State<LastTransactions> createState() => _LastTransactionsState();
}

class _LastTransactionsState extends State<LastTransactions> {
  final List<LastTransactionModel> lastTransactionsList = [
    LastTransactionModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: AssetsImages.imagesAvatar1),
    LastTransactionModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: AssetsImages.imagesAvatar2),
    LastTransactionModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: AssetsImages.imagesAvatar1),
    LastTransactionModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: AssetsImages.imagesAvatar2),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemBuilder: (context, index) => LastTransactionsItem(
                lastTransactionModel: lastTransactionsList[index],
              ),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
