import 'package:e_fran/features/models/product_model.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ProductArrivalTile extends StatelessWidget {
  final ProductModel product;

  const ProductArrivalTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
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
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.category!.name!,
                    style: subtitleTestStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    product.name!,
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$${product.price}',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
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
