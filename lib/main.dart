import 'package:e_fran/features/presentation/providers/auth/auth_provider.dart';
import 'package:e_fran/features/presentation/providers/product_detail/product_detail_provider.dart';
import 'package:e_fran/features/presentation/screen/cart_page_screen.dart';
import 'package:e_fran/features/presentation/screen/checkout_detail_screen.dart';
import 'package:e_fran/features/presentation/screen/home/detail_chat_page.dart';
import 'package:e_fran/features/presentation/screen/home/main_page.dart';
import 'package:e_fran/features/presentation/screen/sign_in_screen.dart';
import 'package:e_fran/features/presentation/screen/sign_up_screen.dart';
import 'package:e_fran/features/presentation/screen/splash_screen.dart';
import 'package:e_fran/features/presentation/widgets/home/checkout_page/checkout_success.dart';
import 'package:e_fran/features/presentation/widgets/home/home_page/detail_product/product_detail_page.dart';
import 'package:e_fran/features/presentation/widgets/home/profile_page.dart/edit_profile/edit_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
          create: (context) => ProductDetailProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => const SignInScreen(),
        '/sign-up': (context) => const SignUpScreen(),
        '/home': (context) => const MainPage(),
        '/detail-chat': (context) => const DetailChatPage(),
        '/edit_profile': (context) => const EditProfilePage(),
        '/product': (context) => const ProductDetailPage(),
        '/cart': (context) => const CartPageScreen(),
        '/checkout': (context) => const CheckoutDetailScreen(),
        '/checkout-success': (context) => const CheckoutSuccess(),
      },
    );
  }
}
