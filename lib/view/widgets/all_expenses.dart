import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/all_expenses_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_header.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_items.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_items_listview.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
