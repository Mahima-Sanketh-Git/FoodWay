import 'package:flutter/material.dart';
import 'package:foodway/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: bcolor,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: bcolor,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: IconButton(
                color: tcolor,
                iconSize: 44,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            );
          },
        ),
      ),
    );
  }
}
