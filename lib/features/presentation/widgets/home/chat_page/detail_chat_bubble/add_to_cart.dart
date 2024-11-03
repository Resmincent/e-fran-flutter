import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/img/sepatu_3.png',
            width: 70,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'COURT VISIO 2.0 SHOES',
                style: primaryTextStyle,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Rp.1.200.000',
                style: priceTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
