import 'package:flutter/material.dart';
import 'package:sgnr_app/utilities/components/mytile.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: const Icon(
                Icons.shopping_cart,
                size: 72,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Mytile(
              icon: Icons.home,
              text: "Shop",
              ontap: () {
                Navigator.pop(
                    context); // untuk menghilangkan drawer ketika di push
                Navigator.pushNamed(context, '/shop_page');
              }),
          //
          Mytile(
            icon: Icons.shopping_cart,
            text: "Cart",
            ontap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cart_page');
            },
          ),
          //
          Mytile(
            icon: Icons.settings,
            text: "Setting",
            ontap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/setting_page');
            },
          ),
          //
          Mytile(
            icon: Icons.info,
            text: "About",
            ontap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about_page');
            },
          )
        ],
      ),
    );
  }
}
