import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/transaction_history_list_tile.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        data: '13 Apr, 2022',
        amount: r'20,129',
        isWithdrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        data: '13 Apr, 2022 at 3:30 PM',
        amount: r'2,000',
        isWithdrawal: false),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        data: '13 Apr, 2022 at 3:30 PM',
        amount: r'20,129',
        isWithdrawal: false),
    // TransactionHistoryModel(
    //     title: 'Cash Withdrawal',
    //     data: '13 Apr, 2022',
    //     amount: r'20,129',
    //     isWithdrawal: true),
    // TransactionHistoryModel(
    //     title: 'Landing Page project',
    //     data: '13 Apr, 2022 at 3:30 PM',
    //     amount: r'2,000',
    //     isWithdrawal: false),
    // TransactionHistoryModel(
    //     title: 'Juni Mobile App project',
    //     data: '13 Apr, 2022 at 3:30 PM',
    //     amount: r'20,129',
    //     isWithdrawal: false),
    // TransactionHistoryModel(
    //     title: 'Cash Withdrawal',
    //     data: '13 Apr, 2022',
    //     amount: r'20,129',
    //     isWithdrawal: true),
    // TransactionHistoryModel(
    //     title: 'Landing Page project',
    //     data: '13 Apr, 2022 at 3:30 PM',
    //     amount: r'2,000',
    //     isWithdrawal: false),
    // TransactionHistoryModel(
    //     title: 'Juni Mobile App project',
    //     data: '13 Apr, 2022 at 3:30 PM',
    //     amount: r'20,129',
    //     isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: items
            .map((e) => TransactionHistoryListTile(transactionHistory: e))
            .toList());
    // return ListView.builder(
    //   itemCount: items.length,
    //   // shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return GestureDetector(
    //       onVerticalDragUpdate: (DragUpdateDetails details) {
    //         // Scroll the list manually based on drag
    //         Scrollable.of(context).position.moveTo(
    //               Scrollable.of(context).position.pixels - details.delta.dy,
    //             );
    //       },
    //       child: TransactionHistoryListTile(transactionHistory: items[index]),
    //     );
    //   },
    // );
  }
}
