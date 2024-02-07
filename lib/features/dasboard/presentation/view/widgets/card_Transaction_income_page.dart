import 'package:dash_board_app/features/dasboard/presentation/view/widgets/card_transactions_income_page.dart';
import 'package:flutter/material.dart';

import 'income_section.dart';

class CardTransactionIncomePage extends StatelessWidget {
  const CardTransactionIncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CardTransactionsSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: IncomeSection(),
        ),
      ],
    );
  }
}
