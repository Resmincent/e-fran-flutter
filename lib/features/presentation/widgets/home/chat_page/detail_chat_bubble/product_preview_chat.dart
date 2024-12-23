import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductPreviewChat extends StatelessWidget {
  const ProductPreviewChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: primaryColor,
        ),
      ),
      height: 74,
      width: 225,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/img/sepatu_3.png',
              width: 54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COURT VISIO 2.0COURT VISIO 2.0',
                  style: primaryTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Rp.1.200.00',
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/svg/button_exit_icon.svg',
            width: 22,
          ),
        ],
      ),
    );
  }
}
