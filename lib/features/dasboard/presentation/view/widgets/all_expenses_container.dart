import 'package:dash_board_app/cores/utils/Images_assets.dart';
import 'package:dash_board_app/features/dasboard/presentation/view/widgets/custom_all_expenses_header.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/models/custom_all_expenses_item_model.dart';
import 'custom_all_expenses_item.dart';

class AllExpensesContainer extends StatefulWidget {
  const AllExpensesContainer({super.key});

  @override
  State<AllExpensesContainer> createState() => _AllExpensesContainerState();
}

class _AllExpensesContainerState extends State<AllExpensesContainer> {
  int activeItem = 0;
  final List<CustomAllExpensesItemModel> allExpensesList = [
    CustomAllExpensesItemModel(
        image: AssetsImages.imagesBalance,
        title: 'Balance',
        date: 'February 2024',
        price: r'$1000'),
    CustomAllExpensesItemModel(
        image: AssetsImages.imagesIncome,
        title: 'Income',
        date: 'February 2024',
        price: r'$10000'),
    CustomAllExpensesItemModel(
        image: AssetsImages.imagesExpenses,
        title: 'Expenses',
        date: 'February 2024',
        price: r'$200.35'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 32, top: 16, right: 32),
            child: CustomHeader(
              header: 'All Expenses',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeItem = 0;
                  });
                },
                child: CustomAllExpensesItem(
                  customAllExpensesItemModel: allExpensesList[0],
                  isActive: activeItem == 0,
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeItem = 1;
                  });
                },
                child: CustomAllExpensesItem(
                  customAllExpensesItemModel: allExpensesList[1],
                  isActive: activeItem == 1,
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeItem = 2;
                  });
                },
                child: CustomAllExpensesItem(
                  customAllExpensesItemModel: allExpensesList[2],
                  isActive: activeItem == 2,
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
          ])
        ],
      ),
    );
  }
}
