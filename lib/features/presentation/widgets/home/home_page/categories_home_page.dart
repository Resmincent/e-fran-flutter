import 'package:e_fran/features/presentation/providers/category_provider.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesHomePage extends StatelessWidget {
  const CategoriesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryProvider categoryProvider = Provider.of<CategoryProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categoryProvider.category.map((category) {
            return Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(
                category.name ?? "Unknown",
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
