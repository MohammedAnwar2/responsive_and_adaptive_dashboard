import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
