import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sgnr_app/utilities/components/mybutton.dart';
import 'package:sgnr_app/utilities/data/catalog.dart';
import 'package:sgnr_app/utilities/data/catalog_items.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeCartItems(BuildContext context, Catalog catalog) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Are you sure want to delete this from your cart?"),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<CatalogItems>().removeCartItems(catalog);
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Text("Connect this app to your payment backend"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CatalogItems>().userCart;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cart",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Check your cart before paying!",
              style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: cart.isEmpty
                  ? Center(
                      child: Text(
                      "Your cart is empty!",
                      style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ))
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        //get item individual
                        final item = cart[index];
                        //return the UI
                        return Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 300,
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Image.asset(item.imagePath),
                            title: Text(
                              item.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              item.price.toStringAsFixed(3),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                removeCartItems(context, item);
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ),
                        );
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Mybutton(
                  ontap: () => payButtonPressed(context),
                  child: const Center(child: Text("PAY NOW"))),
            ),
          ],
        ),
      ),
    );
  }
}
