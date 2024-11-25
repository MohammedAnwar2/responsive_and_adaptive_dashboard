import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/card_and_transaction_history_section.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/income_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          SizedBox(height: 24),
          CardAndTransactionsHistorySection(),
          SizedBox(height: 24),
          IncomeSection()
        ],
      ),
    );
  }
}
