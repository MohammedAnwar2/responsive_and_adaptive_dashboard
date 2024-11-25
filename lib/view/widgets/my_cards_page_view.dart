import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/my_cart.dart';
import 'custom_expandable_pageview/expandable_page_view.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // تغيير شكل مؤشر الماوس عند التمرير
      child: GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails details) {
          // التمرير اليدوي استنادًا إلى اتجاه السحب
          if (details.delta.dx > 0) {
            // السحب لليمين (للصفحة السابقة)
            if (pageController.page! > 0) {
              pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            }
          } else if (details.delta.dx < 0) {
            // السحب لليسار (للصفحة التالية)
            if (pageController.page! < 2) {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            }
          }
        },
        child: ExpandablePageView.builder(
          controller: pageController,
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: MyCart(),
            );
          },
        ),
      ),
    );
  }
}
