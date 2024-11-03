import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonNavigasi extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomButtonNavigasi({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      child: BottomAppBar(
        color: bgColor3,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/home_icon.svg',
                width: 21,
                colorFilter: ColorFilter.mode(
                    currentIndex == 0 ? primaryColor : subTitleColor,
                    BlendMode.srcIn),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/chat_icon.svg',
                width: 20,
                colorFilter: ColorFilter.mode(
                    currentIndex == 1 ? primaryColor : subTitleColor,
                    BlendMode.srcIn),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/like_icon.svg',
                width: 20,
                colorFilter: ColorFilter.mode(
                    currentIndex == 2 ? primaryColor : subTitleColor,
                    BlendMode.srcIn),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/profile_icon.svg',
                width: 18,
                colorFilter: ColorFilter.mode(
                    currentIndex == 3 ? primaryColor : subTitleColor,
                    BlendMode.srcIn),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
