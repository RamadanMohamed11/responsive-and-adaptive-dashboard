import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_design/utils/app_images.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.cardNumber,
    required this.date,
  });
  final String title;
  final String subtitle;
  final String cardNumber;
  final String date;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
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
                  title,
                  style: Styles.styleRegular16(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  subtitle,
                  style: Styles.styleMedium20(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                trailing: SvgPicture.asset(AppImages.gallery),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  textAlign: TextAlign.end,
                  cardNumber,
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
                padding: const EdgeInsets.only(right: 24, bottom: 20),
                child: Text(
                  date,
                  style: Styles.styleRegular16(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
