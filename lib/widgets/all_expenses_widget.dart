import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class AllExpensesWidget extends StatefulWidget {
  const AllExpensesWidget({super.key});

  @override
  State<AllExpensesWidget> createState() => _AllExpensesWidgetState();
}

class _AllExpensesWidgetState extends State<AllExpensesWidget> {
  static const List<String> dropdownItems = [
    "Monthly",
    "Daily",
    "Weekly",
    "Yearly",
  ];
  String selectedItem = dropdownItems.first;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Expenses", style: Styles.styleSemiBold20(context)),
        Spacer(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Color(0xfff1f1f1)),
            ),
          ),
          child: DropdownButton<String>(
            value: selectedItem,
            underline: SizedBox(),
            icon: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: FaIcon(
                FontAwesomeIcons.chevronDown,
                color: Color(0xff064061),
                size: 24,
              ),
            ),
            items:
                dropdownItems
                    .map(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: Styles.styleMedium16(
                            context,
                          ).copyWith(color: Color(0xff064061)),
                        ),
                      ),
                    )
                    .toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedItem = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }
}
