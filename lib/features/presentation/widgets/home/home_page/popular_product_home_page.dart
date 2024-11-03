import 'package:e_fran/features/presentation/widgets/home/home_page/products_home_page.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class PopularProductHomePage extends StatelessWidget {
  const PopularProductHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Text(
            'Popular Products',
            style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 14),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                const Row(
                  children: [
                    ProductsHomePage(),
                    ProductsHomePage(),
                    ProductsHomePage(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
