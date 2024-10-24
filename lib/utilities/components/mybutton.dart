import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybutton extends StatelessWidget {
  void Function()? ontap;
  final Widget child;
  Mybutton({super.key, required this.ontap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        width: 50,
        padding: const EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}
