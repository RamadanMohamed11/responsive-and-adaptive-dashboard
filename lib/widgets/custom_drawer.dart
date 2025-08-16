import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/list_tile_cubit.dart/change_active_list_tile_cubit.dart';
import 'package:responsive_adaptive_design/models/item_model.dart';
import 'package:responsive_adaptive_design/models/user_info_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/widgets/list_tile_item.dart';
import 'package:responsive_adaptive_design/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.items});

  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: Column(
        children: [
          UserInfoListTile(
            userInfo: UserInfoModel(
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
              imagePath: AppImages.avatar1,
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length - 2,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  BlocProvider.of<ChangeActiveListTileCubit>(
                    context,
                  ).changeActiveIndex(index);
                },

                child: ListTileItem(item: items[index], index: index),
              );
            },
          ),
          Spacer(),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListTileItem(item: items[index + 5], index: index + 5);
            },
          ),
        ],
      ),
    );
  }
}
