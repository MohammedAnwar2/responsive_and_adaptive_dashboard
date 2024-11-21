import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_and_adaptive_dashboard/models/user_info.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_colors.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.veryLightGray,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(userInfoModel.title),
        subtitle: Text(userInfoModel.subtitle),
      ),
    );
  }
}
