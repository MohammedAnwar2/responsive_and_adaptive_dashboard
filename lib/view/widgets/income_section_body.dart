import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/utils/size_config.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/income_details.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/income_pie_chart.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/income_pie_chart_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width <= 1400 && width > SizeConfig.desktop) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: IncomePieChartDeatails(),
      );
    } else {
      return const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: IncomePieChart()),
          SizedBox(width: 10),
          Expanded(flex: 2, child: IncomeDetails())
        ],
      );
    }
  }
}
