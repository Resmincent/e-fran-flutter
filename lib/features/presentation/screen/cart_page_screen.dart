// import 'package:e_fran/features/presentation/widgets/home/cart_page/empty_cart_page.dart';
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
      children: [
        const CartCard(),
        _cartSubtotal(),
      ],
    );
  }

  Widget _cartSubtotal() {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Row(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      appBar: _headerChat(),
      body: _cartContent(),
    );
  }
}
