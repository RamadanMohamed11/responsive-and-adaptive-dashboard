import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
