import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';
import 'package:responsive_adaptive_design/widgets/custom_text_field.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Customer name", style: Styles.styleMedium16(context)),
                CustomTextField(hint: "Type customer name"),
              ],
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Customer Email", style: Styles.styleMedium16(context)),
                CustomTextField(hint: "Type customer email"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
