import 'package:flutter/material.dart';

class Drawermenu extends StatelessWidget {
  const Drawermenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
              ),
              child: Text("hello"),
            ),
          ],
        ),
      ),
    );
  }
}
