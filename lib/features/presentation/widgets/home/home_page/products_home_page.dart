import 'package:e_fran/features/models/product_model.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ProductsHomePage extends StatelessWidget {
  final ProductModel product;

  const ProductsHomePage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lightColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: product.galleries?.isNotEmpty == true &&
                      product.galleries![0].url != null
                  ? Image.network(
                      product.galleries![0].url!,
                      height: 150,
                      width: 215,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 150,
                          width: 215,
                          color: Colors.grey,
                          child: const Icon(Icons.broken_image),
                        );
                      },
                    )
                  : Container(
                      height: 150,
                      width: 215,
                      color: Colors.grey,
                      child: const Icon(Icons.image_not_supported),
                    ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.category!.name!,
                    style: subtitleTestStyle.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    product.name!,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$${product.price}',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
