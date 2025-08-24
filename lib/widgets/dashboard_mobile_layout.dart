import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_adaptive_design/widgets/my_card_and_transaction_history_and_income.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          MyCardAndTransactionHistoryAndIncome(),
        ],
      ),
    );
  }
}
