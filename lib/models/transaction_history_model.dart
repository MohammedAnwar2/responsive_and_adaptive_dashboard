class TransactionHistoryModel {
  final String title, data, amount;
  final bool isWithdrawal;

  const TransactionHistoryModel(
      {required this.title,
      required this.data,
      required this.amount,
      required this.isWithdrawal});
}
