import 'package:e_fran/features/presentation/widgets/home/home_page/categories_home_page.dart';
import 'package:e_fran/features/presentation/widgets/home/home_page/header_home_page.dart';
import 'package:e_fran/features/presentation/widgets/home/home_page/new_arrivals.dart';
import 'package:e_fran/features/presentation/widgets/home/home_page/popular_product_home_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HeaderHomePage(),
        CategoriesHomePage(),
        PopularProductHomePage(),
        NewArrivals(),
      ],
    );
  }
}
