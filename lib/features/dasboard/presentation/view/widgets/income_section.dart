import 'package:dash_board_app/features/dasboard/presentation/view/widgets/custom_all_expenses_header.dart';
import 'package:flutter/material.dart';

import 'income_body.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});

  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

class _IncomeSectionState extends State<IncomeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 24, left: 15, bottom: 24, right: 15),
      child: Column(
        children: [
          const CustomHeader(header: 'Income'),
          const SizedBox(
            height: 15,
          ),
          IncomeBody()
        ],
      ),
    );
  }
}
