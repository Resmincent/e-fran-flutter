import 'package:e_fran/features/presentation/widgets/home/cart_page/cart_card.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class CartPageScreen extends StatelessWidget {
  const CartPageScreen({super.key});

  AppBar _headerChat() {
    return AppBar(
      backgroundColor: bgColor3,
      centerTitle: true,
      title: const Text('Your Cart'),
    );
  }

  Widget _cartContent() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: const [
        CartCard(),
      ],
    );
  }

  Widget _customBottomNav(BuildContext context) {
    return Container(
      height: 165,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: primaryTextStyle,
              ),
              Text(
                '\$287,96',
                style: priceTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 0.3,
            color: bgColor3,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 50,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Continue to Checkout',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: primaryText,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      appBar: _headerChat(),
      body: _cartContent(),
      bottomNavigationBar: _customBottomNav(context),
    );
  }
}
