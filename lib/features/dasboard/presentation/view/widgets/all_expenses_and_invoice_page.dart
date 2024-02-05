import 'package:flutter/material.dart';

import 'all_expenses_container.dart';

class AllExpensesAndInvoicePage extends StatelessWidget {
  const AllExpensesAndInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesContainer(),
      ],
    );
  }
}
