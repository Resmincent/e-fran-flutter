import 'package:e_fran/features/presentation/widgets/home/like_page/whistlist_card.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ContentWhistlistChat extends StatelessWidget {
  const ContentWhistlistChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColor1,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: const [
            WhistlistCard(),
            WhistlistCard(),
            WhistlistCard(),
          ],
        ),
      ),
    );
  }
}
