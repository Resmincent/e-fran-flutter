import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/img/logo_image_shop.png',
                  width: 54,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoes Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Good Night, This is on Good Night, This is on',
                        style: subtitleTestStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: subtitleTestStyle.copyWith(
                    fontWeight: light,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: bgColor3,
            )
          ],
        ),
      ),
    );
  }
}
