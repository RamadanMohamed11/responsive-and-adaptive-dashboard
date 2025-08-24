import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_design/models/user_info_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_section.dart';
import 'package:responsive_adaptive_design/widgets/quick_invoice_section.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});
  static const List<UserInfoModel> users = [
    UserInfoModel(
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail.com",
      imagePath: AppImages.avatar1,
    ),
    UserInfoModel(
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
      imagePath: AppImages.avatar2,
    ),
    UserInfoModel(
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail.com",
      imagePath: AppImages.avatar1,
    ),
    UserInfoModel(
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
      imagePath: AppImages.avatar2,
    ),
  ];

  static const List<AllExpensesItemModel> allExpensesItems = [
    AllExpensesItemModel(
      title: "Balance",
      date: "April 2022",
      price: "\$20.129",
      imagePath: AppImages.balance,
    ),
    AllExpensesItemModel(
      title: "Income",
      date: "April 2022",
      price: "\$20.129",
      imagePath: AppImages.income,
    ),
    AllExpensesItemModel(
      title: "Expenses",
      date: "April 2022",
      price: "\$20.129",
      imagePath: AppImages.expenses,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesSection(allExpensesItems: allExpensesItems),
          SizedBox(height: 24),
          QuickInvoiceSection(users: users),
        ],
      ),
    );
  }
}
