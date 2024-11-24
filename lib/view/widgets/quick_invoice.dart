import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_quick_invoice_header.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_container_background.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/quick_invoice_form.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      padding: 24,
      child: Column(
        children: [
          AllQuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
