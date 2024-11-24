import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          focusColor: const Color(0xFFAAAAAA),
          hintText: hint,
          hintStyle: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          focusedBorder: customBorder(),
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: customBorder()),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFFAFAFA)));
  }
}
