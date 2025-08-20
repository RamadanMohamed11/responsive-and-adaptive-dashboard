import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_design/cubits/all_expenses_cubit/change_active_expense_cubit.dart';
import 'package:responsive_adaptive_design/cubits/all_expenses_cubit/change_active_expense_state.dart';
import 'package:responsive_adaptive_design/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class AllExpensesItemWidget extends StatefulWidget {
  const AllExpensesItemWidget({
    super.key,
    required this.item,
    required this.index,
  });
  final AllExpensesItemModel item;
  final int index;

  @override
  State<AllExpensesItemWidget> createState() => _AllExpensesItemWidgetState();
}

class _AllExpensesItemWidgetState extends State<AllExpensesItemWidget> {
  late bool isActive;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isActive = widget.index == 0;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeActiveExpenseCubit, ChangeActiveExpenseState>(
      listener: (context, state) {
        if (state is ChangeActiveExpenseStateSuccess) {
          isActive = widget.index == state.newIndex;
        }
      },
      builder: (context, state) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          decoration: ShapeDecoration(
            color: isActive ? Color(0xff4EB7F2) : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfff1f1f1), width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: ShapeDecoration(
                        color:
                            isActive
                                ? Colors.white.withOpacity(0.1)
                                : Color(0xffFAFAFA),
                        shape: OvalBorder(),
                      ),
                      child: SvgPicture.asset(
                        widget.item.imagePath,
                        colorFilter: ColorFilter.mode(
                          isActive ? Colors.white : Color(0xff4EB7F2),
                          BlendMode.srcIn, // applies color overlay
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.chevronRight,
                      color: isActive ? Colors.white : Color(0xff064061),
                    ),
                  ],
                ),
                SizedBox(height: 34),
                // SizedBox(height: 17),
                Text(
                  widget.item.title,
                  style: Styles.styleBold16(context).copyWith(
                    color: isActive ? Colors.white : Color(0xff064061),
                  ),
                ),
                SizedBox(height: 8),
                // SizedBox(height: 4),
                Text(
                  widget.item.date,
                  style: Styles.styleRegular14(context).copyWith(
                    color: isActive ? Color(0xffFAFAFA) : Color(0xffAAAAAA),
                  ),
                ),
                SizedBox(height: 16),
                // SizedBox(height: 8),
                Text(
                  widget.item.price,
                  style:
                      isActive
                          ? Styles.styleSemiBold24(
                            context,
                          ).copyWith(color: Colors.white)
                          : Styles.styleSemiBold24(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
