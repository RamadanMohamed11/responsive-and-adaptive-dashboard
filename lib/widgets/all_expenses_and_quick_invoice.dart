import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_item_widget.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_widget.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

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
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xfff1f1f1), width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              children: [
                AllExpensesWidget(),
                SizedBox(height: 16),

                // SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      ...allExpensesItems.map((item) {
                        if (allExpensesItems.indexOf(item) == 1) {
                          return Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: AllExpensesItemWidget(item: item),
                            ),
                          );
                        } else {
                          return Expanded(
                            child: AllExpensesItemWidget(item: item),
                          );
                        }
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          // SizedBox(height: 12),
          Container(
            decoration: ShapeDecoration(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xfff1f1f1), width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
