import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_items_list.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_header.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key, required this.allExpensesItems});

  final List<AllExpensesItemModel> allExpensesItems;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsList(allExpensesItems: allExpensesItems),
        ],
      ),
    );
  }
}
