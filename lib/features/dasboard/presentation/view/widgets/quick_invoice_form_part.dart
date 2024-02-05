import 'package:dash_board_app/cores/utils/styles.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/title_textfield.dart';
import 'package:flutter/material.dart';

class QuickInvoiceFormPart extends StatelessWidget {
  const QuickInvoiceFormPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: Row(
            children: [
              Expanded(
                child: TitleTextField(
                  title: 'Customer name',
                  hint: 'Type customer name',
                ),
              ),
              Expanded(
                child: TitleTextField(
                  title: 'Customer Email',
                  hint: 'Type customer Email',
                ),
              ),
            ],
          ),
        ),
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type item name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Add more details',
                style: AppStyles.styleSemiBold18(context).copyWith(
                  color: const Color(0xff4EB7F2),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff4EB7F2)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'Send Money',
                        style: AppStyles.styleSemiBold18(context),
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
