import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';
import 'package:responsive_adaptive_design/widgets/custom_text_field.dart';

class ItemInfo extends StatefulWidget {
  const ItemInfo({super.key});

  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  final List<String> dropdownItems = ["USD", "EGP", "EUR", "GBP", "JPY", "INR"];
  late String selectedItem;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItem = dropdownItems.first;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Item name", style: Styles.styleMedium16(context)),
                CustomTextField(hint: "Type item name"),
              ],
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Item mount", style: Styles.styleMedium16(context)),
                Container(
                  decoration: ShapeDecoration(
                    color: Color(0xffFAFAFA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),

                      side: BorderSide(color: Color(0xffFAFAFA)),
                    ),
                  ),
                  child: Row(
                    children: [
                      DropdownButton<String>(
                        itemHeight: 65,
                        value: selectedItem,
                        underline: SizedBox(),
                        icon: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 20,
                            bottom: 20,
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.chevronDown,
                            color: Color(0xff064061),
                            size: 20,
                          ),
                        ),
                        items:
                            dropdownItems
                                .map(
                                  (String value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                        bottom: 20,
                                      ),
                                      child: Center(
                                        child: Text(
                                          value,
                                          textAlign: TextAlign.center,
                                          style: Styles.styleRegular16(
                                            context,
                                          ).copyWith(color: Color(0xffAAAAAA)),
                                        ),
                                      ),
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
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
