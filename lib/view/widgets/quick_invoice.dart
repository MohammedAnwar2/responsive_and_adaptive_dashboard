import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_container_background.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      child: Column(
        children: [
          SizedBox()
          // AllExpensesHeader(),
          // SizedBox(height: 16),
          // AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
