import 'package:flutter/material.dart';

import 'card_section.dart';

class CardTransactionsIncomeSection extends StatelessWidget {
  const CardTransactionsIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 20, bottom: 24),
      margin: const EdgeInsets.only(
        top: 40,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [CardSection()],
      ),
    );
  }
}
