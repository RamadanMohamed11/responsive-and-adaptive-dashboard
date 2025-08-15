import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileBuilder,
    required this.desktopBuilder,
    required this.tabletBuilder,
  });

  final WidgetBuilder mobileBuilder;
  final WidgetBuilder tabletBuilder;
  final WidgetBuilder desktopBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBuilder(context);
        } else if (constraints.maxWidth < 900 && constraints.maxWidth >= 600) {
          return tabletBuilder(context);
        } else {
          return desktopBuilder(context);
        }
      },
    );
  }
}
