import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.text, this.backgroundColor});
  final String text;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        overlayColor: Colors.white,
        padding: const EdgeInsets.all(20),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
      ).copyWith(
        elevation: WidgetStateProperty.resolveWith<double>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return 0.0; // ارتفاع الظل عند مرور المؤشر
            }
            if (states.contains(WidgetState.pressed)) {
              return 0.0; // ارتفاع الظل عند الضغط
            }
            return 0.0; // ارتفاع الظل الافتراضي
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return const Color(0xFF4DB7F2)
                  .withOpacity(0.1); // لون عند مرور المؤشر
            }
            if (states.contains(WidgetState.pressed)) {
              return Colors.white.withOpacity(0.2); // لون عند الضغط
            }
            return Colors.white; // اللون الافتراضي
          },
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: AppStyles.styleSemiBold18(context).copyWith(
            color: backgroundColor == null
                ? Colors.white
                : const Color(0xFF4DB7F2)),
      ),
    );
  }
}
