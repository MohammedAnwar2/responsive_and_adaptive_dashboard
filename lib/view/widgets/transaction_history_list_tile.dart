import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';

class TransactionHistoryListTile extends StatelessWidget {
  const TransactionHistoryListTile({
    super.key,
    required this.transactionHistory,
  });
  final TransactionHistoryModel transactionHistory;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Text(transactionHistory.title,
            style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(transactionHistory.data,
            style: AppStyles.styleRegular16(context).copyWith(
              color: const Color(0xFFAAAAAA),
            )),
        trailing: Text(
          '\$${transactionHistory.amount}',
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionHistory.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}
