import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "ABOUT SIGNORE",
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/sgnr.jpg",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Founded in 2017 by Wesley Huang, Signore is a dynamic fashion start-up that brings innovative style and creativity to the forefront of the industry. Wesley, who began his journey as a successful YouTuber, transformed his passion for fashion into a brand that blends contemporary trends with timeless elegance. What started as a small venture in a rented space in Kemang has now expanded into a growing business, with its headquarters located in the bustling area of BSD, South Tangerang.\n\n"
                  "Our office, nestled in Cluster Illustria, reflects the brand’s creative spirit. The first floor houses our editing and admin teams, along with storage for our collections, while the second floor serves as Wesley’s personal workspace and a showcase for Signore’s exclusive designs.\n\n"
                  "At Signore, we are committed to crafting high-quality, fashion-forward pieces that empower individuals to express their unique style. Each collection is thoughtfully curated, designed to combine comfort and sophistication, ensuring that our customers always feel confident in their looks. From humble beginnings to expanding horizons, Signore continues to evolve, delivering exceptional fashion that resonates with the modern consumer.",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                      height: 1.5),
                  textAlign: TextAlign.justify,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
