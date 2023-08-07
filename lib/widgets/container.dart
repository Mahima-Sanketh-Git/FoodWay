import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 76,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffede4ff),
      ),
    );
  }
}
