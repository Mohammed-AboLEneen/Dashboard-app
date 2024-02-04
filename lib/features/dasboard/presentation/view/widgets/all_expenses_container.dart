import 'package:dash_board_app/features/dasboard/presentation/view/widgets/custom_all_expenses_header.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/utils/styles.dart';

class AllExpensesContainer extends StatelessWidget {
  const AllExpensesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 45),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [const CustomAllExpensesHeader()],
      ),
    );
  }
}
