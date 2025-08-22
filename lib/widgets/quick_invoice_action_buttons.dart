import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/custom_button.dart';

class QuickInvoiceActionButtons extends StatelessWidget {
  const QuickInvoiceActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomButton(
            title: "Add more details",
            backgroundColor: Colors.white,
            edgeInsets: EdgeInsets.all(20.0),
            titleColor: Color(0xff4EB7F2),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: CustomButton(
            title: "Send Money",
            backgroundColor: Color(0xff4EB7F2),
            edgeInsets: EdgeInsets.symmetric(horizontal: 75.5, vertical: 16),
          ),
        ),
      ],
    );
  }
}
