import 'package:dash_board_app/features/dasboard/presentation/view/widgets/income_pichart.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/models/income_pichart_item_model.dart';
import 'income_item.dart';

class IncomePiChartWithListTile extends StatefulWidget {
  const IncomePiChartWithListTile({super.key});

  @override
  State<IncomePiChartWithListTile> createState() =>
      _IncomePiChartWithListTileState();
}

class _IncomePiChartWithListTileState extends State<IncomePiChartWithListTile> {
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.map((e) => IncomeItem(itemModel: e)).toList(),
          ),
        ),
      ],
    );
  }
}
