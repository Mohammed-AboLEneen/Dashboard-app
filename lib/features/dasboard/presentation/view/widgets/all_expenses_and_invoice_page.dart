import 'package:dash_board_app/features/dasboard/presentation/view/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

import 'all_expenses_container.dart';

class AllExpensesAndInvoicePage extends StatelessWidget {
  const AllExpensesAndInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpensesContainer()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(child: QuickInvoiceSection()),
      ],
    );
  }
}
