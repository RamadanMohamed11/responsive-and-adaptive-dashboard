import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/transaction_item_model.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class TransactionCardListTile extends StatelessWidget {
  const TransactionCardListTile({
    super.key,
    required this.transactionItemModel,
  });

  final TransactionItemModel transactionItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: Styles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionItemModel.subtitle,
          style: Styles.styleRegular16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionItemModel.price,
          style: Styles.styleSemiBold20(
            context,
          ).copyWith(color: Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
