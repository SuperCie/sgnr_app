import 'package:flutter/material.dart';
import 'package:sgnr_app/utilities/data/catalog.dart';

class CatalogItems extends ChangeNotifier {
  List<Catalog> signoreItems = [
    Catalog(
        name: "Boxy Tee",
        description:
            "Overboxy SGNR Scuba, hadir dengan texture bahan yang lembut dan nyaman serta easy mix and match.\n\n"
            "Menggunakan material Slogyy Scuba dengan texture yang lembut, stretchy dan antikusut",
        price: 99.00,
        imagePath: "assets/images/boxytee.jpg"),
    Catalog(
        name: "Scandal Memoir Eau de Parfum",
        description:
            "Karakter Notes : Manis yang menggoda / Sweet Yet Fresh, one of the most Addictingly Seducing perfume by SGNR.",
        price: 149.00,
        imagePath: "assets/images/parfume.jpg"),
    Catalog(
        name: "Minimal Messenger Taupe",
        description:
            "Minimalist Messenger dengan design minimal dan tersedia 3 compartment yang berbeda menjadikan artikel ini cocok sekali sebagai penunjang setiap aktivitas casual dan formal anda.",
        price: 199.00,
        imagePath: "assets/images/bag.jpg"),
    Catalog(
        name: "Roma II Knitwear Polo",
        description:
            "Produk terbaru SGNR dengan bahan Rajut Cotton 100% terdapat 6 pilihan warna dengan textur bahan yang unik dan tone warna yang berbeda.",
        price: 199.00,
        imagePath: "assets/images/polo.jpg"),
    Catalog(
        name: "Gurkha Pants",
        description:
            "Gurkha Pants, celana dengan siluet ramping sepanjang kaki, beserta high waistband untuk membentuk tampilan yang lebih tinggi dan nuansa old money. Gurkha SGNR memiliki adjuster kancing di bagian kanan dan kiri untuk  mengatur ukuran pemakai.",
        price: 229.00,
        imagePath: "assets/images/pants.jpg"),
  ];
  // list of items in user cart
  List<Catalog> userCart = [];

  // get list of items for sale
  List<Catalog> getCatalogItems() {
    return signoreItems;
  }

  // get cart
  List<Catalog> getCartItems() {
    return userCart;
  }

  // add items to cart
  void addCartItems(Catalog catalog) {
    userCart.add(catalog);
    notifyListeners();
  }

  // remove item from cart
  void removeCartItems(Catalog catalog) {
    userCart.remove(catalog);
    notifyListeners();
  }
}
