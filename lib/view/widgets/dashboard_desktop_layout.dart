import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_drawer.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/my_cart.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoice()),
        SizedBox(width: 24),
        Expanded(child: MyCart()),
        // SizedBox(width: 32),
      ],
    );
  }
}
