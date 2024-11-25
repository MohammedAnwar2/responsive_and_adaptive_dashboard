import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_dot_indicator.dart';

class DotsInicators extends StatelessWidget {
  const DotsInicators({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 6),
            child: CustomDotInidcator(isActive: index == currentPage),
          );
        },
      ),
    );
  }
}
