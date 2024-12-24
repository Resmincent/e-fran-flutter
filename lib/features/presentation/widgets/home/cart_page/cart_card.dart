import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: bgColor3,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('assets/img/sepatu_3.png'),
                  ),
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
                      'Terrex Urban Low',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '\$143,98',
                      style: priceTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/svg/add_icon.svg',
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '2',
                    style: primaryTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SvgPicture.asset(
                    'assets/svg/kurang_icon.svg',
                    width: 16,
                    height: 16,
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/img/remove_icon.png',
                width: 10,
                height: 12,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
