import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/dashboard_view.dart';

void main() {
  runApp(const ResposiveAdptiveDashBoard());
}

class ResposiveAdptiveDashBoard extends StatelessWidget {
  const ResposiveAdptiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResonsiveDashBoardView(),
    );
  }
}
