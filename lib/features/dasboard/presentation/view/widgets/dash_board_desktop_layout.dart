import 'package:dash_board_app/features/dasboard/presentation/view/widgets/all_expenses_and_invoice_page.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/card_Transaction_income_page.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Row(
        children: [
          Expanded(flex: 1, child: CustomDrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(flex: 2, child: AllExpensesAndInvoicePage()),
          SizedBox(
            width: 24,
          ),
          Expanded(flex: 1, child: CardTransactionIncomePage()),
          SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
