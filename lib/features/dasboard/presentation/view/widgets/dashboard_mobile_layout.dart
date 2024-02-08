import 'package:dash_board_app/features/dasboard/presentation/view/widgets/all_expenses_and_invoice_page.dart';
import 'package:flutter/material.dart';

import 'card_Transaction_income_page.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndInvoicePage(),
          SizedBox(
            height: 24,
          ),
          CardTransactionIncomePage()
        ],
      ),
    );
  }
}
