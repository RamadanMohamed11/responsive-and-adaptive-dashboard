import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/all_expenses_cubit/change_active_expense_cubit.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit.dart';
import 'package:responsive_adaptive_design/cubits/list_tile_cubit.dart/change_active_list_tile_cubit.dart';
import 'package:responsive_adaptive_design/widgets/adaptive_layout_widget.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive_design/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashboardMobileLayout(),
        desktopLayout:
            (context) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => ChangeActiveListTileCubit()),
                BlocProvider(create: (context) => ChangeActiveExpenseCubit()),
                BlocProvider(create: (context) => ChangeActiveDotCubit()),
              ],
              child: const DashboardDesktopLayout(),
            ),
        tabletLayout: (context) => const DashboardTabletLayout(),
      ),
    );
  }
}
