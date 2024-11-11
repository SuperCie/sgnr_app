import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sgnr_app/pages/about_page.dart';
import 'package:sgnr_app/pages/cart_page.dart';
import 'package:sgnr_app/pages/intro_page.dart';
import 'package:sgnr_app/pages/setting_page.dart';
import 'package:sgnr_app/pages/shop_page.dart';
import 'package:sgnr_app/utilities/data/catalog_items.dart';
import 'package:sgnr_app/utilities/theme/light_theme.dart';
import 'package:sgnr_app/utilities/theme/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CatalogItems(),
      ),
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      )
    ],
    child: const Signore(),
  ));
}

class Signore extends StatelessWidget {
  const Signore({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CatalogItems(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        theme: Provider.of<ThemeProvider>(context).themeData,
        routes: {
          '/intro_page': (context) => const IntroPage(),
          '/shop_page': (context) => ShopPage(),
          '/cart_page': (context) => const CartPage(),
          '/setting_page': (context) => const SettingPage(),
          '/about_page': (context) => const AboutPage()
        },
      ),
    );
  }
}
