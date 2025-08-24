import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/adaptive_layout_widget.dart';
import 'package:responsive_adaptive_design/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          MediaQuery.of(context).size.width < 600 ? AppBar(elevation: 0) : null,
      drawer: CustomDrawer(),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashboardMobileLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
      ),
    );
  }
}
