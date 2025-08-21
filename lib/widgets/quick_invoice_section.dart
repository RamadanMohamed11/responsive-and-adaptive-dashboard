import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/user_info_model.dart';
import 'package:responsive_adaptive_design/widgets/customer_info.dart';
import 'package:responsive_adaptive_design/widgets/item_info.dart';
import 'package:responsive_adaptive_design/widgets/latest_transaction.dart';
import 'package:responsive_adaptive_design/widgets/quick_invoice_action_buttons.dart';
import 'package:responsive_adaptive_design/widgets/quick_invoice_header.dart';

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
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(users: users),
          SizedBox(height: 48),
          CustomerInfo(),
          SizedBox(height: 24),
          ItemInfo(),
          SizedBox(height: 24),
          QuickInvoiceActionButtons(),
        ],
      ),
    );
  }
}
