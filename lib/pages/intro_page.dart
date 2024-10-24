import 'package:flutter/material.dart';
import 'package:sgnr_app/pages/shop_page.dart';
import 'package:sgnr_app/utilities/components/mybutton.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon
              Icon(
                Icons.shopping_cart,
                size: 76,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 30,
              ),
              //Title
              const Text(
                "SIGNORE OFFICIAL",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              //Subtitle
              Text(
                "Mens Fashion Brand that create the best quality products and up-to-date design",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              //Button
              Mybutton(
                ontap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ShopPage(),
                    ),
                  );
                },
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: const Icon(Icons.arrow_forward_rounded),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
