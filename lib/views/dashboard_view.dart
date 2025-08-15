import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/adaptive_layout_widget.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      mobileBuilder: (context) => const DashboardMobileLayout(),
      desktopBuilder: (context) => const DashboardDesktopLayout(),
      tabletBuilder: (context) => const DashboardTabletLayout(),
    );
  }
}
