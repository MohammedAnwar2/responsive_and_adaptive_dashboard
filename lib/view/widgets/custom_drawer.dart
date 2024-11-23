import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/drawer_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/models/user_info.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_colors.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/active_and_unactive_item.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_list_view_items.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const UserInfoModel userInfoModel = UserInfoModel(
      image: Assets.imagesLekan,
      subtitle: "demo@gmail.com",
      title: "Lekan Okeowo");

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: const Padding(
        padding: EdgeInsets.only(left: 28),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: UserInfoListTile(userInfoModel: userInfoModel)),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            CustomListViewItems(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: UnActiveDrawer(
                        drawerItemsModel: DrawerItemsModel(
                            image: Assets.imagesSetting,
                            itemName: "Setting system")),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: UnActiveDrawer(
                        drawerItemsModel: DrawerItemsModel(
                            image: Assets.imagesLogout,
                            itemName: "Logout account")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
