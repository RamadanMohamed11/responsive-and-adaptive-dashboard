import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_design/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class AllExpensesItemWidget extends StatelessWidget {
  const AllExpensesItemWidget({super.key, required this.item});
  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
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
                    color: Color(0xffFAFAFA),
                    shape: OvalBorder(),
                  ),
                  child: SvgPicture.asset(item.imagePath),
                ),
                Spacer(),
                Icon(FontAwesomeIcons.chevronDown, color: Color(0xff064061)),
              ],
            ),
            SizedBox(height: 34),
            // SizedBox(height: 17),
            Text(
              item.title,
              style: Styles.styleBold16(
                context,
              ).copyWith(color: Color(0xff064061)),
            ),
            SizedBox(height: 8),
            // SizedBox(height: 4),
            Text(
              item.date,
              style: Styles.styleRegular14(
                context,
              ).copyWith(color: Color(0xffAAAAAA)),
            ),
            SizedBox(height: 16),
            // SizedBox(height: 8),
            Text(item.price, style: Styles.styleSemiBold24(context)),
          ],
        ),
      ),
    );
  }
}
