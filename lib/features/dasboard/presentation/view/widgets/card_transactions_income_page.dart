import 'package:dash_board_app/features/dasboard/presentation/view/widgets/transactions_section.dart';
import 'package:flutter/material.dart';

import 'card_section.dart';

class CardTransactionsSection extends StatelessWidget {
  const CardTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 15, bottom: 24, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          CardSection(),
          Divider(
            height: 40,
          ),
          TransactionsSection()
        ],
      ),
    );
  }
}
