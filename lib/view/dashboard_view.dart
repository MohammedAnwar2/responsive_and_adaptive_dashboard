import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/utils/size_config.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/adptive_layout.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_drawer.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/dashboard_tablet_layout.dart';
import 'widgets/dashboard_desktop_layout.dart';

class ResonsiveDashBoardView extends StatelessWidget {
  ResonsiveDashBoardView({super.key});
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldState,
        drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? const Drawer(child: CustomDrawer())
            : null,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.menu, color: Color(0xFF064060)),
                  onPressed: () {
                    scaffoldState.currentState?.openDrawer();
                  },
                ),
                backgroundColor: const Color(0xFFFAFAFA))
            : null,
        backgroundColor: const Color(0xffF7F9FA),
        body: AdaptiveLayout(
            mobileLayout: (context) => const DashboardMobileLayout(),
            tabletLayout: (context) => const DashboardTabletLayout(),
            desktopLayout: (context) => const DashboardDesktopLayout()));
  }
}
