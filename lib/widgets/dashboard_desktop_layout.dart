import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/item_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  static const List<ItemModel> items = [
    ItemModel(imagePath: AppImages.dashboard, title: "Dashboard"),
    ItemModel(imagePath: AppImages.myTransactions, title: "My Transactions"),
    ItemModel(imagePath: AppImages.statistics, title: "Statistics"),
    ItemModel(imagePath: AppImages.walletAccount, title: "Wallet Account"),
    ItemModel(imagePath: AppImages.myInvestments, title: "My Investments"),
    ItemModel(imagePath: AppImages.settings, title: "Setting system"),
    ItemModel(imagePath: AppImages.logout, title: "Logout account"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xffE5E5E5),
      child: Row(
        children: [
          Expanded(child: CustomDrawer(items: items)),
          SizedBox(width: 15),
          Expanded(flex: 3, child: Container(color: Color(0xffFFFFFF))),
          SizedBox(width: 15),

          Expanded(
            flex: 2,
            child: Container(
              color: Color(0xffFFFFFF),
              child: Column(
                children: [
                  Expanded(flex: 3, child: Container()),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
