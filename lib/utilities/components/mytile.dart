import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mytile extends StatelessWidget {
  final IconData icon;
  final String text;
  void Function()? ontap;
  Mytile(
      {super.key, required this.icon, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        onTap: ontap,
      ),
    );
  }
}
