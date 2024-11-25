import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';

class IncomePieChartDeatails extends StatefulWidget {
  const IncomePieChartDeatails({super.key});

  @override
  State<IncomePieChartDeatails> createState() => _IncomePieChartState();
}

class _IncomePieChartState extends State<IncomePieChartDeatails> {
  int isActive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          setState(() {
            isActive = p1?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            title: isActive == 0 ? "Design service" : "40%",
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(
                color: isActive == 0 ? const Color(0xFF064060) : Colors.white),
            titlePositionPercentageOffset: isActive == 0 ? 1.5 : null,
            value: 40,
            color: const Color(0xFF208BC7),
            radius: isActive == 0 ? 50 : 40),
        PieChartSectionData(
            title: isActive == 1 ? "Design \nproduct" : "25%",
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(
                color: isActive == 1 ? const Color(0xFF064060) : Colors.white),
            titlePositionPercentageOffset: isActive == 1 ? 1.8 : null,
            value: 25,
            color: const Color(0xFF4DB7F2),
            radius: isActive == 1 ? 50 : 40),
        PieChartSectionData(
            title: isActive == 2 ? "Product royalti" : "20%",
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(
                color: isActive == 2 ? const Color(0xFF064060) : Colors.white),
            titlePositionPercentageOffset: isActive == 2 ? 1.5 : null,
            value: 20,
            color: const Color(0xFF064060),
            radius: isActive == 2 ? 50 : 40),
        PieChartSectionData(
            title: isActive == 3 ? "Other" : "22%",
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(
                color: isActive == 3 ? const Color(0xFF064060) : Colors.white),
            titlePositionPercentageOffset: isActive == 3 ? 1.5 : null,
            value: 22,
            color: const Color(0xFFE2DECD),
            radius: isActive == 3 ? 50 : 40),
      ],
    );
  }
}
