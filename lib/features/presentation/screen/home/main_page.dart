import 'package:e_fran/features/presentation/screen/home/chat_page.dart';
import 'package:e_fran/features/presentation/screen/home/home_page.dart';
import 'package:e_fran/features/presentation/screen/home/like_page.dart';
import 'package:e_fran/features/presentation/screen/home/profile_page.dart';
import 'package:e_fran/features/presentation/widgets/home/cart_button.dart';
import 'package:e_fran/features/presentation/widgets/home/custom_button_navigasi.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ChatPage(),
    const LikePage(),
    const ProfilePage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      bottomNavigationBar: CustomButtonNavigasi(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
      floatingActionButton: const CartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
    );
  }
}
