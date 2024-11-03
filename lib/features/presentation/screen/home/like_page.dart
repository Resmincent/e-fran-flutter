// import 'package:e_fran/features/presentation/widgets/home/like_page/empty_whislist_chat.dart';
import 'package:e_fran/features/presentation/widgets/home/like_page/content_whistlist_chat.dart';
import 'package:e_fran/features/presentation/widgets/home/like_page/header_whistlist_chat.dart';
import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderWhistlistChat(),
        // EmptyWhislistChat(),
        ContentWhistlistChat(),
      ],
    );
  }
}
