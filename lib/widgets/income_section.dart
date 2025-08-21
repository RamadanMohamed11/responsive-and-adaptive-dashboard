import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/custom_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [CustomHeader(title: "Income")],
      ),
    );
  }
}
