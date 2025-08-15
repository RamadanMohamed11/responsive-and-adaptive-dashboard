import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/views/dashboard_view.dart';

void main() {
  runApp(ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
