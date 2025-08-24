import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Transaction History", style: Styles.styleSemiBold20(context)),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "See all",
            style: Styles.styleMedium16(
              context,
            ).copyWith(color: Color(0xff4EB7F2)),
          ),
        ),
      ],
    );
  }
}
