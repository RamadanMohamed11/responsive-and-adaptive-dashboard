import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/list_tile_cubit.dart/change_active_list_tile_cubit.dart';
import 'package:responsive_adaptive_design/models/item_model.dart';
import 'package:responsive_adaptive_design/models/user_info_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/widgets/list_tile_item.dart';
import 'package:responsive_adaptive_design/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<ItemModel> firstItems = [
    ItemModel(imagePath: AppImages.dashboard, title: "Dashboard"),
    ItemModel(imagePath: AppImages.myTransactions, title: "My Transactions"),
    ItemModel(imagePath: AppImages.statistics, title: "Statistics"),
    ItemModel(imagePath: AppImages.walletAccount, title: "Wallet Account"),
    ItemModel(imagePath: AppImages.myInvestments, title: "My Investments"),
  ];
  static const List<ItemModel> secondItems = [
    ItemModel(imagePath: AppImages.settings, title: "Setting system"),
    ItemModel(imagePath: AppImages.logout, title: "Logout account"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.75,
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
