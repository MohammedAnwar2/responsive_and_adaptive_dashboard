import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/user_info.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  LatestTransactionListView({super.key});
  static const List<UserInfoModel> userInfoList = [
    UserInfoModel(
        image: Assets.imagesAvator1,
        title: 'John Doe',
        subtitle: 'johndoe@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator2,
        title: 'Jane Smith',
        subtitle: 'janesmith@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator1,
        title: 'Michael Johnson',
        subtitle: 'michaeljohnson@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator1,
        title: 'Emily Davis',
        subtitle: 'emilydavis@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator2,
        title: 'Chris Brown',
        subtitle: 'chrisbrown@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator1,
        title: 'Jessica Wilson',
        subtitle: 'jessicawilson@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator1,
        title: 'David Martinez',
        subtitle: 'davidmartinez@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator2,
        title: 'Sophia Garcia',
        subtitle: 'sophiagarcia@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator1,
        title: 'James Miller',
        subtitle: 'jamesmiller@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator1,
        title: 'Olivia Anderson',
        subtitle: 'oliviaanderson@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator2,
        title: 'Daniel Thomas',
        subtitle: 'danielthomas@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvator1,
        title: 'Isabella Moore',
        subtitle: 'isabellamoore@gmail.com'),
  ];

  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      child: Row(
        children: userInfoList
            .map((e) => GestureDetector(
                behavior:
                    HitTestBehavior.translucent, // Pass gestures to children
                onHorizontalDragUpdate: (details) {
                  controller.jumpTo(
                    controller.offset - details.delta.dx,
                  );
                },
                child:
                    IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))))
            .toList(),
      ),
    );
  }
}
