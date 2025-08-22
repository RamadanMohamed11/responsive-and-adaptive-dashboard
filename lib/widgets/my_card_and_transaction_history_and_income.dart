import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit_state.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit.dart';
import 'package:responsive_adaptive_design/models/transaction_item_model.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';
import 'package:responsive_adaptive_design/widgets/card_widget.dart';
import 'package:responsive_adaptive_design/widgets/dotted_container.dart';
import 'package:responsive_adaptive_design/widgets/expandable_page_view_cards.dart';
import 'package:responsive_adaptive_design/widgets/income_section.dart';
import 'package:responsive_adaptive_design/widgets/transaction_card_list_tile.dart';
import 'package:responsive_adaptive_design/widgets/transaction_header.dart';

class MyCardAndTransactionHistoryAndIncome extends StatelessWidget {
  const MyCardAndTransactionHistoryAndIncome({super.key});

  static const List<TransactionItemModel> transactionItems = [
    TransactionItemModel(
      title: "Cash Withdrawal",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      price: "\$20,129",
    ),
    TransactionItemModel(
      title: "Landing Page project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      price: "\$2,000",
    ),
    TransactionItemModel(
      title: "Juni Mobile App project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      price: "\$20,129",
    ),
  ];
  static const List<DottedContainer> dottedContainers = <DottedContainer>[
    DottedContainer(index: 0),
    DottedContainer(index: 1),
    DottedContainer(index: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,

              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My card", style: Styles.styleSemiBold20(context)),
                  SizedBox(height: 20),
                  ExpandablePageViewCards(),
                  SizedBox(height: 19),
                  Row(children: [...dottedContainers]),
                  SizedBox(height: 20),
                  TransactionHeader(),
                  SizedBox(height: 20),
                  Text(
                    "13 April 2022",
                    style: Styles.styleMedium16(
                      context,
                    ).copyWith(color: Color(0xffAAAAAA)),
                  ),
                  SizedBox(height: 16),
                  ...transactionItems.map((item) {
                    if (transactionItems.indexOf(item) == 1) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: TransactionCardListTile(
                          transactionItemModel: item,
                        ),
                      );
                    } else {
                      return TransactionCardListTile(
                        transactionItemModel: item,
                      );
                    }
                  }),
                ],
              ),
            ),
            SizedBox(height: 24),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
