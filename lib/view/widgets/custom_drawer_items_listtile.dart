import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/drawer_items_model.dart';

import 'active_and_unactive_item.dart';

class CustomDrawerItemsListTile extends StatelessWidget {
  const CustomDrawerItemsListTile(
      {super.key, required this.drawerItemsModel, required this.isClick});
  final DrawerItemsModel drawerItemsModel;
  final bool isClick;
  @override
  Widget build(BuildContext context) {
    return !isClick
        ? UnActiveDrawer(drawerItemsModel: drawerItemsModel)
        : ActiveDrawer(drawerItemsModel: drawerItemsModel);
  }
}
