import 'package:flutter/material.dart';

import '../../../../../cores/utils/styles.dart';

class CustomHeader extends StatelessWidget {
  final String header;

  const CustomHeader({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          header,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              border: Border.all(color: const Color(0xffF1F1F1), width: 1)),
          padding: const EdgeInsets.all(12),
          child: Row(children: [
            Text('Monthly', style: AppStyles.styleMedium16(context)),
            const SizedBox(
              width: 15,
            ),
            Transform.rotate(
              angle: 1.57079633,
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 24,
              ),
            )
          ]),
        )
      ],
    );
  }
}
