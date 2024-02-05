import 'package:dash_board_app/features/dasboard/presentation/view/widgets/quick_invoice_form_part.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/quick_invoice_header.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/title_textfield.dart';
import 'package:flutter/material.dart';

import 'last_transactions.dart';

class QuickInvoiceSection extends StatefulWidget {
  const QuickInvoiceSection({super.key});

  @override
  State<QuickInvoiceSection> createState() => _QuickInvoiceSectionState();
}

class _QuickInvoiceSectionState extends State<QuickInvoiceSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceSectionHeader(),
          LastTransactions(),
          Divider(
            height: 1,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceFormPart(),
        ],
      ),
    );
  }
}
