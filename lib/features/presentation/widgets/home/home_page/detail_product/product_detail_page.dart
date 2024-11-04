import 'package:e_fran/features/presentation/widgets/home/home_page/detail_product/header_product_detail_page.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor5,
      body: ListView(
        children: const [
          HeaderProductDetailPage(),
        ],
      ),
    );
  }
}
