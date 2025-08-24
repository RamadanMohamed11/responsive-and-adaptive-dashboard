import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_adaptive_design/cubits/all_expenses_cubit/change_active_expense_cubit.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit.dart';
import 'package:responsive_adaptive_design/cubits/list_tile_cubit.dart/change_active_list_tile_cubit.dart';
import 'package:responsive_adaptive_design/views/dashboard_view.dart';

void main() {
  runApp(ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ChangeActiveListTileCubit()),
            BlocProvider(create: (context) => ChangeActiveExpenseCubit()),
            BlocProvider(create: (context) => ChangeActiveDotCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: DashboardView(),
          ),
        );
      },
    );
  }
}
