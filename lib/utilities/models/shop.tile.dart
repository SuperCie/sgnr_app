import 'package:flutter/material.dart';

class ShopTile extends StatelessWidget {
  const ShopTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      width: 300,
      margin: const EdgeInsets.only(left: 18),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              width: 225,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset("assets/images/boxytee.jpg"),
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Boxy Tee",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Overboxy SGNR Scuba, hadir dengan texture bahan yang lembut dan nyaman serta easy mix and match.\n\n"
                  "Menggunakan material Slogyy Scuba dengan texture yang lembut, stretchy dan antikusut",
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp 99.000",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 18),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 25,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
