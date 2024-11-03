import 'package:e_fran/features/presentation/widgets/home/profile_page.dart/content_profile.dart';
import 'package:e_fran/features/presentation/widgets/home/profile_page.dart/header_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderProfile(),
        ContentProfile(),
      ],
    );
  }
}
