import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_design/models/item_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_widget.dart';
import 'package:responsive_adaptive_design/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatefulWidget {
  const DashboardDesktopLayout({super.key});

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
  State<DashboardDesktopLayout> createState() => _DashboardDesktopLayoutState();
}

class _DashboardDesktopLayoutState extends State<DashboardDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFFF7F9FA),
      child: Row(
        children: [
          Expanded(
            child: CustomDrawer(
              firstItems: DashboardDesktopLayout.firstItems,
              secondItems: DashboardDesktopLayout.secondItems,
            ),
          ),
          SizedBox(width: 32),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 32),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xfff1f1f1), width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Column(
                        children: [AllExpensesWidget(), SizedBox(height: 16)],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xfff1f1f1), width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
