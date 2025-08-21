import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class QuickInvoiceActionButtons extends StatelessWidget {
  const QuickInvoiceActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Add more details",
                style: Styles.styleSemiBold18(
                  context,
                ).copyWith(color: Color(0xff4EB7F2)),
              ),
            ),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 75.5, vertical: 16),
              decoration: BoxDecoration(
                color: Color(0xff4EB7F2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Send Money",
                    style: Styles.styleSemiBold18(context),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
