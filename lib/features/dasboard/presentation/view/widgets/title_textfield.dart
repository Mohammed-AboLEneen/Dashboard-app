import 'package:flutter/material.dart';

import '../../../../../cores/utils/styles.dart';

class TitleTextField extends StatelessWidget {
  final String title;
  final String hint;

  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppStyles.styleMedium16(context)),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              decoration: InputDecoration(
            hintText: hint,
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            hintStyle: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xFFAAAAAA)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          ))
        ],
      ),
    );
  }
}
