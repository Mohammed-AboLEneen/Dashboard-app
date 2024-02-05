import 'package:flutter/material.dart';

import '../../../../../cores/utils/styles.dart';

class QuickInvoiceSectionHeader extends StatelessWidget {
  const QuickInvoiceSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(Icons.add, color: Color(0xff4EB7F2)),
        )
      ],
    );
  }
}
