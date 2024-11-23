import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_header.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_items_listview.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_container_background.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
