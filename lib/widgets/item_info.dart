import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Item name", style: Styles.styleMedium16(context)),
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
                Text("Item mount", style: Styles.styleMedium16(context)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
