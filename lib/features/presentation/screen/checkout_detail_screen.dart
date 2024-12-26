import 'package:e_fran/features/presentation/widgets/home/checkout_page/checkout_card.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class CheckoutDetailScreen extends StatelessWidget {
  const CheckoutDetailScreen({super.key});

  AppBar _header() {
    return AppBar(
      backgroundColor: bgColor3,
      centerTitle: true,
      title: const Text('Checkout Details'),
    );
  }

  Widget _buildAddressContent() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor3,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Address Details',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/img/home_icon.png',
                    width: 40,
                  ),
                  Image.asset(
                    'assets/img/line_icon.png',
                    height: 30,
                  ),
                  Image.asset(
                    'assets/img/location_icon.png',
                    width: 40,
                  ),
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Text(
                    'Store Location',
                    style: subtitleTestStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'Adidas Core',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Your Address',
                    style: subtitleTestStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'Marsemoon',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentSummary() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor3,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Quantity',
                    style: subtitleTestStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Product Price',
                    style: subtitleTestStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Shipping',
                    style: subtitleTestStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2 Items',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    '\$575.96',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Free',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 0.3,
            color: bgColor2,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                '\$575.96',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _checkoutContent() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                const SizedBox(
                  height: 2,
                ),
                const CheckoutCard(),
                const CheckoutCard(),
                _buildAddressContent(),
                _buildPaymentSummary(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _customBottomNav(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        children: [
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
            width: 315,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/checkout-success', (route) => false);
              },
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  )),
              child: Text(
                'Checkout Now',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
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
      appBar: _header(),
      body: _checkoutContent(),
      bottomNavigationBar: _customBottomNav(context),
    );
  }
}
