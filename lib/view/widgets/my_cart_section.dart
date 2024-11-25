import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/dots_indicators.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/my_cards_page_view.dart';

class MyCartSection extends StatefulWidget {
  const MyCartSection({super.key});

  @override
  State<MyCartSection> createState() => _MyCartSectionState();
}

class _MyCartSectionState extends State<MyCartSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20(context)),
        const SizedBox(height: 20),
        MyCardsPageView(pageController: pageController),
        const SizedBox(height: 20),
        DotsInicators(currentPage: currentPage)
      ],
    );
  }
}
