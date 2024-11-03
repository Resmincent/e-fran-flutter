import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WhistlistCard extends StatelessWidget {
  const WhistlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: bgColor3),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/img/sepatu_3.png',
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sepatu Terbaik',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text('Rp. 1.231.232', style: priceTextStyle)
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/svg/like_icon.svg',
            width: 22,
          )
        ],
      ),
    );
  }
}
