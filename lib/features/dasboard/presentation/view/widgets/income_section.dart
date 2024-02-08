import 'package:dash_board_app/features/dasboard/presentation/view/widgets/custom_all_expenses_header.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/income_pichart_item.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/models/income_pichart_item_model.dart';
import 'income_pichart.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});

  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

class _IncomeSectionState extends State<IncomeSection> {
  final List<IncomePiChartItemModel> items = [
    IncomePiChartItemModel(
      title: 'Design service',
      value: 40,
      color: const Color(0xff208CC8),
    ),
    IncomePiChartItemModel(
      title: 'Design product',
      value: 25,
      color: const Color(0xff4EB7F2),
    ),
    IncomePiChartItemModel(
      title: 'Product royalti',
      value: 22,
      color: const Color(0xff064061),
    ),
    IncomePiChartItemModel(
      title: 'Other',
      value: 20,
      color: const Color(0xffE2DECD),
    ),
  ];

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
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: IncomeChart(),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: items
                        .map((e) => IncomePiChartItem(itemModel: e))
                        .toList(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
