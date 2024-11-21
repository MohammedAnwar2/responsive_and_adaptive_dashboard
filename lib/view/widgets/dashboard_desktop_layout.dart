import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/user_info.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/user_info_list_tile.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    const UserInfoModel userInfoModel = UserInfoModel(
        image: Assets.imagesLekan,
        subtitle: "demo@gmail.com",
        title: "Lekan Okeowo");
    return Row(
      children: [
        Expanded(child: UserInfoListTile(userInfoModel: userInfoModel))
      ],
    );
  }
}
