import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomePieChart extends StatefulWidget {
  const IncomePieChart({super.key});

  @override
  State<IncomePieChart> createState() => _IncomePieChartState();
}

class _IncomePieChartState extends State<IncomePieChart> {
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
            value: 40,
            color: const Color(0xFF208BC7),
            showTitle: false,
            radius: isActive == 0 ? 40 : 30),
        PieChartSectionData(
            value: 25,
            color: const Color(0xFF4DB7F2),
            showTitle: false,
            radius: isActive == 1 ? 40 : 30),
        PieChartSectionData(
            value: 20,
            color: const Color(0xFF064060),
            showTitle: false,
            radius: isActive == 2 ? 40 : 30),
        PieChartSectionData(
            value: 22,
            color: const Color(0xFFE2DECD),
            showTitle: false,
            radius: isActive == 3 ? 40 : 30),
      ],
    );
  }
}
