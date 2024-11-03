import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Ifran Hilmi Azhara',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '@ifran',
                  style: subtitleTestStyle.copyWith(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('assets/img/foto_profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
