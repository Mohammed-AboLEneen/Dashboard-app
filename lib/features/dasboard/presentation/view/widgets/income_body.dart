import 'package:flutter/material.dart';

import '../../../../../cores/utils/size_config.dart';
import 'detailed_income_pichart.dart';
import 'income_pichart_with_listtile.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    print(width);
    return width >= SizeConfig.desktop && width < 1310
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ))
        : const IncomePiChartWithListTile();
  }
}
