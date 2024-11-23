import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/all_expenses_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/active_and_unactive_all_expenses_items.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems(
      {super.key, required this.itemsModel, required this.isActive});
  final AllExpensesItemsModel itemsModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItems(itemsModel: itemsModel)
        : UnActiveAllExpensesItems(itemsModel: itemsModel);
  }
}
