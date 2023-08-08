import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 344,
        height: 149,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xffede4ff)));
  }
}
