import 'package:e_fran/features/models/user_model.dart';
import 'package:e_fran/features/presentation/providers/auth_provider.dart';
import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, ${user.name}',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '@${user.username}',
                  style: subtitleTestStyle.copyWith(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(user.profilePhotoUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
