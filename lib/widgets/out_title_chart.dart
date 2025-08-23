import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/out_title_chart_model.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class OutTitleChart extends StatelessWidget {
  const OutTitleChart({super.key, required this.outTitleChartModel});
  final OutTitleChartModel outTitleChartModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: outTitleChartModel.dotColor,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 5,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    outTitleChartModel.title,
                    style: Styles.styleRegular16(
                      context,
                    ).copyWith(color: Color(0xff064061)),
                  ),
                ),
              ),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerRight,
                  child: Text(
                    outTitleChartModel.percent,
                    style: Styles.styleRegular16(
                      context,
                    ).copyWith(color: Color(0xff208CC8)),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(width: 20),
      ],
    );
  }
}
