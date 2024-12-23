import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class HeaderProductDetailPage extends StatefulWidget {
  const HeaderProductDetailPage({super.key});

  @override
  State<HeaderProductDetailPage> createState() =>
      _HeaderProductDetailPageState();
}

class _HeaderProductDetailPageState extends State<HeaderProductDetailPage> {
  final List<String> images = [
    'assets/img/sepatu_1.png',
    'assets/img/sepatu_1.png',
    'assets/img/sepatu_1.png'
  ];

  int currentIndex = 0;

  Widget _buildNavigationBar() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.chevron_left),
          ),
          Icon(Icons.shopping_bag, color: primaryColor)
        ],
      ),
    );
  }

  Widget _buildImageCarousel() {
    return CarouselSlider(
      items: images.map(_buildCarouselItem).toList(),
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 1.0,
        initialPage: 0,
        onPageChanged: (index, _) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildCarouselItem(String image) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildIndicator(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: currentIndex == index ? 16 : 4,
      height: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: currentIndex == index ? primaryColor : Colors.grey,
      ),
    );
  }

  Widget _buildIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images.asMap().entries.map((entry) {
        return _buildIndicator(entry.key);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildNavigationBar(),
        _buildImageCarousel(),
        const SizedBox(height: 20),
        _buildIndicators(),
      ],
    );
  }
}
