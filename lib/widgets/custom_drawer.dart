import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/list_tile_cubit.dart/change_active_list_tile_cubit.dart';
import 'package:responsive_adaptive_design/models/item_model.dart';
import 'package:responsive_adaptive_design/models/user_info_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/widgets/list_tile_item.dart';
import 'package:responsive_adaptive_design/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.firstItems,
    required this.secondItems,
  });

  final List<ItemModel> firstItems;
  final List<ItemModel> secondItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfo: UserInfoModel(
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com",
                imagePath: AppImages.avatar1,
              ),
            ),
          ),

          SliverList.builder(
            itemCount: firstItems.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  BlocProvider.of<ChangeActiveListTileCubit>(
                    context,
                  ).changeActiveIndex(index);
                },

                child: ListTileItem(item: firstItems[index], index: index),
              );
            },
          ),
          // Spacer(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                ...secondItems.map(
                  (item) => ListTileItem(item: item, index: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
