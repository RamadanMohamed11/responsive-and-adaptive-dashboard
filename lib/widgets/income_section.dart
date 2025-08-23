import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/custom_header.dart';
import 'package:responsive_adaptive_design/widgets/custom_pie_chart.dart';
import 'package:responsive_adaptive_design/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomHeader(title: "Income"),
          SizedBox(height: 16),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(child: CustomPieChart()),
                SizedBox(width: 40),
                Expanded(flex: 2, child: IncomeDetails()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
