import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/all_expenses_cubit/change_active_expense_cubit.dart';
import 'package:responsive_adaptive_design/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_design/widgets/all_expenses_item_widget.dart';

class AllExpensesItemsList extends StatelessWidget {
  const AllExpensesItemsList({super.key, required this.allExpensesItems});

  final List<AllExpensesItemModel> allExpensesItems;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700
        ? NonScrollableList(allExpensesItems: allExpensesItems)
        : ScrollableList(allExpensesItems: allExpensesItems);
  }
}

class ScrollableList extends StatelessWidget {
  const ScrollableList({super.key, required this.allExpensesItems});

  final List<AllExpensesItemModel> allExpensesItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...allExpensesItems.map((item) {
          int indexOfItem = allExpensesItems.indexOf(item);
          if (indexOfItem == 1) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<ChangeActiveExpenseCubit>(
                      context,
                    ).changeActiveExpense(indexOfItem);
                  },
                  child: AllExpensesItemWidget(item: item, index: indexOfItem),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  BlocProvider.of<ChangeActiveExpenseCubit>(
                    context,
                  ).changeActiveExpense(indexOfItem);
                },
                child: AllExpensesItemWidget(item: item, index: indexOfItem),
              ),
            );
          }
        }),
      ],
    );
  }
}

class NonScrollableList extends StatelessWidget {
  const NonScrollableList({super.key, required this.allExpensesItems});

  final List<AllExpensesItemModel> allExpensesItems;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...allExpensesItems.map((item) {
            int indexOfItem = allExpensesItems.indexOf(item);
            if (indexOfItem == 1) {
              return IntrinsicWidth(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      BlocProvider.of<ChangeActiveExpenseCubit>(
                        context,
                      ).changeActiveExpense(indexOfItem);
                    },
                    child: AllExpensesItemWidget(
                      item: item,
                      index: indexOfItem,
                    ),
                  ),
                ),
              );
            } else {
              return IntrinsicWidth(
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<ChangeActiveExpenseCubit>(
                      context,
                    ).changeActiveExpense(indexOfItem);
                  },
                  child: AllExpensesItemWidget(item: item, index: indexOfItem),
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
