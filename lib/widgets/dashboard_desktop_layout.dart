import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_adaptive_design/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_design/widgets/my_card_and_transaction_history_and_income.dart';

class DashboardDesktopLayout extends StatefulWidget {
  const DashboardDesktopLayout({super.key});

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
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 32),
              child: AllExpensesAndQuickInvoice(),
            ),
          ),
          SizedBox(width: 24),

          Expanded(flex: 2, child: MyCardAndTransactionHistoryAndIncome()),
        ],
      ),
    );
  }
}
