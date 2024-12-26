import 'package:e_fran/features/presentation/providers/product_detail/product_detail_provider.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContentProductDetailPage extends StatelessWidget {
  const ContentProductDetailPage({super.key});

  void _addWishListSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: alertSuccess,
        duration: const Duration(seconds: 2),
        content: const Text(
          'Has been added to the Wishlist',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _removeWishListSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: alertColor,
        duration: const Duration(seconds: 2),
        content: const Text(
          'Has been removed from the Wishlist',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Future<void> _showAlertSuccess(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => Container(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        child: AlertDialog(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.close,
                    color: primaryText,
                  ),
                ),
                Image.asset(
                  'assets/img/icon_success.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Hurray :)',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Item added successfully',
                  style: subtitleTestStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 154,
                  height: 44,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: alertSuccess,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        )),
                    child: Text('View My Cart',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContentHeader() {
    return Consumer<ProductDetailProvider>(
        builder: (context, productDetail, _) {
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
                productDetail.toggleWishlist();
                if (productDetail.isWishlist) {
                  _addWishListSnackBar(context);
                } else {
                  _removeWishListSnackBar(context);
                }
              },
              child: Image.asset(
                productDetail.isWishlist
                    ? 'assets/img/button_witslist_blue.png'
                    : 'assets/img/wistlist_image.png',
                width: 46,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
    });
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

  Widget _buildButtonChatAndAddtoCart(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: defaultMargin,
        top: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail-chat');
            },
            child: Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/button_chat.png'),
                ),
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
                onPressed: () {
                  _showAlertSuccess(context);
                },
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
            _buildButtonChatAndAddtoCart(context),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
