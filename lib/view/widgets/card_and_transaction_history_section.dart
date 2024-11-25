import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_container_background.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/my_cart_section.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/transaction_history.dart';

class CardAndTransactionsHistorySection extends StatelessWidget {
  const CardAndTransactionsHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      child: Column(
        children: [
          MyCartSection(),
          Divider(color: Color(0xFFF1F1F1), height: 40),
          TransactionHistory(),
        ],
      ),
    );
  }
}
