import 'package:flutter/material.dart';
import 'package:sgnr_app/utilities/components/mydrawer.dart';
import 'package:sgnr_app/utilities/models/shop.tile.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: const Mydrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Shop",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Pick From a selected list of premium local products 🇮🇩",
              style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ShopTile();
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Divider(
              color: Colors.transparent,
            ),
          ),
          BottomAppBar(
            child: Center(
              child: Text(
                "Signore Official",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
