import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key});

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int activeIndexChart = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData(context));
  }

  PieChartData getChartData(BuildContext context) {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          activeIndexChart =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          title: "40%",
          showTitle: activeIndexChart == 0,
          color: Color(0xff208CC8),
          value: 60,
          radius: activeIndexChart == 0 ? 35 : 21,
          titleStyle: Styles.styleRegular16(
            context,
          ).copyWith(color: Colors.white),
        ),
        PieChartSectionData(
          title: "25%",
          showTitle: activeIndexChart == 1,
          color: Color(0xff4EB7F2),
          value: 40,
          radius: activeIndexChart == 1 ? 35 : 21,
          titleStyle: Styles.styleRegular16(
            context,
          ).copyWith(color: Colors.white),
        ),
        PieChartSectionData(
          title: "20%",
          showTitle: activeIndexChart == 2,
          color: Color(0xff064061),
          value: 40,
          radius: activeIndexChart == 2 ? 35 : 21,
          titleStyle: Styles.styleRegular16(
            context,
          ).copyWith(color: Colors.white),
        ),
        PieChartSectionData(
          title: "22%",
          showTitle: activeIndexChart == 3,
          color: Color(0xffE2DECD),
          value: 40,
          radius: activeIndexChart == 3 ? 35 : 21,
          titleStyle: Styles.styleRegular16(
            context,
          ).copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
