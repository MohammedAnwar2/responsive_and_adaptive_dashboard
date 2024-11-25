import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/all_expenses_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_items.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});
  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemsModel> items = const [
    AllExpensesItemsModel(
        image: Assets.imagesBalance,
        name: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemsModel(
        image: Assets.imagesIncome,
        name: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemsModel(
        image: Assets.imagesExpenses,
        name: "Expenses",
        date: "April 2022",
        price: "\$20,129"),
  ];
  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (int i = 0; i < items.length; i++) ...[
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (isActive != i) {
                  setState(() {});
                  isActive = i;
                }
              },
              child: AllExpensesItems(
                itemsModel: items[i],
                isActive: isActive == i,
              ),
            ),
          ),
          // Add SizedBox between items except the last one
          if (i < items.length - 1) const SizedBox(width: 8),
        ],
      ],
    );

    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   children: items.asMap().entries.map(
    //     (e) {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             if (isActive != e.key) {
    //               setState(() {});
    //               isActive = e.key;
    //             }
    //           },
    //           child: AllExpensesItems(
    //               itemsModel: e.value, isActive: isActive == e.key),
    //         ),
    //       );
    //     },
    //   ).toList(),
    // );
  }
}
