import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/income_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/income_items.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeItemsModel> items = [
    IncomeItemsModel(
        title: "Design service", value: "40%", color: Color(0xFF208BC7)),
    IncomeItemsModel(
        title: "Design product", value: "25%", color: Color(0xFF4DB7F2)),
    IncomeItemsModel(
        title: "Product royalti", value: "20%", color: Color(0xFF064060)),
    IncomeItemsModel(title: "Other", value: "22%", color: Color(0xFFE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: items.map((e) => IncomeItem(incomeItems: e)).toList());
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return IncomeItem(incomeItems: items[index]);
    //   },
    // );
  }
}
