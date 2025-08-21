import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';
import 'package:responsive_adaptive_design/widgets/income_section.dart';

class MyCardAndTransactionHistoryAndIncome extends StatelessWidget {
  const MyCardAndTransactionHistoryAndIncome({super.key});

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
                  Row(
                    children: [
                      Text(
                        "Transaction History",
                        style: Styles.styleSemiBold20(context),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: Styles.styleMedium16(
                            context,
                          ).copyWith(color: Color(0xff4EB7F2)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "13 April 2022",
                    style: Styles.styleMedium16(
                      context,
                    ).copyWith(color: Color(0xffAAAAAA)),
                  ),
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
