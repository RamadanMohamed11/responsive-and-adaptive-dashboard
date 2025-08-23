import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/out_title_chart_model.dart';
import 'package:responsive_adaptive_design/widgets/out_title_chart.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutTitleChart(
          outTitleChartModel: OutTitleChartModel(
            title: "Design service",
            percent: "40%",
            dotColor: Color(0xff208CC8),
          ),
        ),
        SizedBox(height: 12),
        OutTitleChart(
          outTitleChartModel: OutTitleChartModel(
            title: "Design product",
            percent: "25%",
            dotColor: Color(0xff4EB7F2),
          ),
        ),
        SizedBox(height: 12),

        OutTitleChart(
          outTitleChartModel: OutTitleChartModel(
            title: "Product royalties",
            percent: "20%",
            dotColor: Color(0xff064061),
          ),
        ),
        SizedBox(height: 12),

        OutTitleChart(
          outTitleChartModel: OutTitleChartModel(
            title: "Other",
            percent: "22%",
            dotColor: Color(0xffE2DECD),
          ),
        ),
      ],
    );
  }
}
