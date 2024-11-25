import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/card_and_transaction_history_section.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_drawer.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoice(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          CardAndTransactionsHistorySection(),
                          SizedBox(height: 24),
                          Flexible(child: IncomeSection())
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        // Expanded(child: ),
        SizedBox(width: 32),
      ],
    );
  }
}
