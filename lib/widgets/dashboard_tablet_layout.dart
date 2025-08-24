import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFFF7F9FA),
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 32),
              child: DashboardMobileLayout(),
            ),
          ),
        ],
      ),
    );
  }
}
