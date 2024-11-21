import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/adptive_layout.dart';

import 'widgets/dashboard_desktop_layout.dart';

class ResonsiveDashBoardView extends StatelessWidget {
  const ResonsiveDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: AdaptiveLayout(
            mobileLayout: (context) => SizedBox(),
            tabletLayout: (context) => SizedBox(),
            desktopLayout: (context) => DashboardDesktopLayout()));
  }
}
