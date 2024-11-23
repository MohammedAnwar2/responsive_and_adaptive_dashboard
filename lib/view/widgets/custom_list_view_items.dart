import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/drawer_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_drawer_items_listtile.dart';

class CustomListViewItems extends StatefulWidget {
  const CustomListViewItems({super.key});

  @override
  State<CustomListViewItems> createState() => _CustomListViewItemsState();
}

class _CustomListViewItemsState extends State<CustomListViewItems> {
  final List<DrawerItemsModel> items = [
    const DrawerItemsModel(
      image: Assets.imagesDashboard,
      itemName: "Dashboard",
    ),
    const DrawerItemsModel(
      image: Assets.imagesTransaction,
      itemName: "My Transaction",
    ),
    const DrawerItemsModel(
      image: Assets.imagesStatistics,
      itemName: "Statistics",
    ),
    const DrawerItemsModel(
      image: Assets.imagesWalletAccount,
      itemName: "Wallet Account",
    ),
    const DrawerItemsModel(
      image: Assets.imagesInvestments,
      itemName: "My Investments",
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (index != activeIndex) {
                activeIndex = index;
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrawerItemsListTile(
              isClick: activeIndex == index,
              drawerItemsModel: items[index],
            ),
          ),
        );
      },
    );
  }
}
