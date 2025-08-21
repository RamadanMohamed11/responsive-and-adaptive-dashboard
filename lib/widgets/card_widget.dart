import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff4EB7F2),
        image: DecorationImage(
          image: AssetImage(AppImages.cardBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 21, right: 59),
            child: ListTile(
              title: Text(
                "Name card",
                style: Styles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: Styles.styleMedium20(
                  context,
                ).copyWith(color: Colors.white),
              ),
              trailing: Icon(
                FontAwesomeIcons.image,
                size: 24,
                color: Color(0xff292D32),
              ),
            ),
          ),
          SizedBox(height: 55),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                textAlign: TextAlign.end,
                "0918 8124 0042 8129",
                style: Styles.styleSemiBold24(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 12),
          Align(
            alignment: Alignment.bottomRight,

            child: Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 27),
              child: Text(
                "12/20 - 124",
                style: Styles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
