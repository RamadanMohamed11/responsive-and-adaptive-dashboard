import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/models/user_info_model.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';
import 'package:responsive_adaptive_design/widgets/user_info_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key, required this.users});

  final List<UserInfoModel> users;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text("Latest Transaction", style: Styles.styleMedium16(context)),
        SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...users.map((user) {
                return IntrinsicWidth(child: UserInfoListTile(userInfo: user));
              }),
            ],
          ),
        ),
      ],
    );
  }
}
