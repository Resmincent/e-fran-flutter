import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ContentProductDetailPage extends StatelessWidget {
  const ContentProductDetailPage({super.key});

  Widget _buildContentHeader() {
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
                  'TERREX URBAN LOW',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: 4),
                Text(
                  'Hiking',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () {
              // Handle wishlist tap
            },
            child: Image.asset(
              'assets/img/wistlist_image.png',
              width: 46,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceTag() {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 20,
        left: defaultMargin,
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Price starts from', style: primaryTextStyle),
          Text(
            '\$143,98',
            style: priceTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDescrption() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description',
              style: primaryTextStyle.copyWith(fontWeight: medium)),
          const SizedBox(height: 12),
          Text(
            'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
            style: subtitleTestStyle.copyWith(
              fontWeight: light,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }

  Widget _buildFamiliarShoes() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text(
              'Familiar Shoes',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
          const SizedBox(height: 12),
          _buildContentFamiliarShoes(),
        ],
      ),
    );
  }

  Widget _buildContentFamiliarShoes() {
    int index = -1;

    final List<String> familiarShoes = [
      'assets/img/sepatu_1.png',
      'assets/img/sepatu_1.png',
      'assets/img/sepatu_1.png',
      'assets/img/sepatu_1.png',
      'assets/img/sepatu_1.png',
      'assets/img/sepatu_1.png',
      'assets/img/sepatu_1.png',
      'assets/img/sepatu_1.png',
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: familiarShoes.map((image) {
          index++;
          return Container(
              margin: EdgeInsets.only(left: index == 0 ? defaultMargin : 0),
              child: _familiarShoesCard(image));
        }).toList(),
      ),
    );
  }

  Widget _familiarShoesCard(String imageUrl) {
    return Container(
      width: 54,
      height: 54,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }

  Widget _buildButtonChatAndAddtoCart() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: defaultMargin,
        top: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/button_chat.png'),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Container(
              height: 54,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    )),
                child: Text('Add to Cart',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 17),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: bgColor3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContentHeader(),
            _buildPriceTag(),
            _buildDescrption(),
            _buildFamiliarShoes(),
            const SizedBox(height: 30),
            _buildButtonChatAndAddtoCart(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
