import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_container_background.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/income_section_body.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IncomeSectionHeader(),
        SizedBox(height: 16),
        IncomeSectionBody()
      ],
    ));
  }
}
