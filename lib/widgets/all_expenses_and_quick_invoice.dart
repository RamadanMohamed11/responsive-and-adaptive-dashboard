import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_design/models/user_info_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_section.dart';
import 'package:responsive_adaptive_design/widgets/list_tile_item.dart';
import 'package:responsive_adaptive_design/widgets/user_info_list_tile.dart';

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
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpensesSection(allExpensesItems: allExpensesItems),
            SizedBox(height: 24),
            QuickInvoiceSection(users: users),
          ],
        ),
      ),
    );
  }
}

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key, required this.users});
  final List<UserInfoModel> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xfff1f1f1), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Quick Invoice", style: Styles.styleSemiBold20(context)),
              Spacer(),
              Container(
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: Color(0xffFAFAFA),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Color(0xff4EB7F2)),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Text("Latest Transaction", style: Styles.styleMedium16(context)),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...users.map((user) {
                  return IntrinsicWidth(
                    child: UserInfoListTile(userInfo: user),
                  );
                }),
              ],
            ),
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
