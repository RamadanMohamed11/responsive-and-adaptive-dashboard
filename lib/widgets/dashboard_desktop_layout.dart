import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/item_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_adaptive_design/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatefulWidget {
  const DashboardDesktopLayout({super.key});

  @override
  State<DashboardDesktopLayout> createState() => _DashboardDesktopLayoutState();
}

class _DashboardDesktopLayoutState extends State<DashboardDesktopLayout> {
  final List<ItemModel> firstItems = [
    ItemModel(imagePath: AppImages.dashboard, title: "Dashboard"),
    ItemModel(imagePath: AppImages.myTransactions, title: "My Transactions"),
    ItemModel(imagePath: AppImages.statistics, title: "Statistics"),
    ItemModel(imagePath: AppImages.walletAccount, title: "Wallet Account"),
    ItemModel(imagePath: AppImages.myInvestments, title: "My Investments"),
  ];
  final List<ItemModel> secondItems = [
    ItemModel(imagePath: AppImages.settings, title: "Setting system"),
    ItemModel(imagePath: AppImages.logout, title: "Logout account"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFFF7F9FA),
      child: Row(
        children: [
          Expanded(
            child: CustomDrawer(
              firstItems: firstItems,
              secondItems: secondItems,
            ),
          ),
          SizedBox(width: 32),
          Expanded(flex: 3, child: AllExpensesAndQuickInvoice()),
          SizedBox(width: 24),

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
