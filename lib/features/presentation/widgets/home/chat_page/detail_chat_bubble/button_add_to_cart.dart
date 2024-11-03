import 'package:e_fran/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonAddToCart extends StatelessWidget {
  const ButtonAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: primaryColor,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                maximumSize: const Size(110, 40)),
            onPressed: () {},
            child: Text(
              'Add To Cart',
              style: maroonTextStyle.copyWith(fontSize: 10, fontWeight: bold),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: Text(
                'Buy Now',
                style: GoogleFonts.poppins(color: bgColor3),
              )),
        ],
      ),
    );
  }
}
