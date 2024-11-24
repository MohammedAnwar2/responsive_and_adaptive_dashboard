import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_text_form_feild.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild({super.key, required this.hint, required this.title});
  final String hint, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),
        CustomTextFormFeild(hint: hint)
      ],
    );
  }
}
