import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class HeaderProductDetailPage extends StatelessWidget {
  const HeaderProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Icon(Icons.chevron_left),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Icon(Icons.shopping_bag, color: primaryColor)
            ],
          ),
        )
      ],
    );
  }
}
