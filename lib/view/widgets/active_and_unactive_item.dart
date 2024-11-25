import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_and_adaptive_dashboard/models/drawer_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';

class UnActiveDrawer extends StatelessWidget {
  const UnActiveDrawer({
    super.key,
    required this.drawerItemsModel,
  });

  final DrawerItemsModel drawerItemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(drawerItemsModel.image),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemsModel.itemName,
          style: AppStyles.styleRegular16(context),
        ),
      ),
    );
  }
}

class ActiveDrawer extends StatelessWidget {
  const ActiveDrawer({
    super.key,
    required this.drawerItemsModel,
  });

  final DrawerItemsModel drawerItemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(drawerItemsModel.image),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemsModel.itemName,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(width: 3.27, color: const Color(0xFF4EB7F2)),
    );
  }
}
