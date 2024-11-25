import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/income_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeItems});
  final IncomeItemsModel incomeItems;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItems.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(incomeItems.title, style: AppStyles.styleMedium16(context)),
      trailing:
          Text(incomeItems.value, style: AppStyles.styleMedium16(context)),
    );
  }
}
