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
      backgroundColor: bcolor,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: bcolor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: tcolor,
                    size: 40,
                  ),
                );
              },
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromRGBO(29, 38, 125, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Account.png",
                          width: 120,
                        ),
                        const Center(
                          child: Text(
                            "Hi,Mahima",
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 50 / 36,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                title: const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {},
                title: const Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: const Icon(
                  Icons.supervised_user_circle_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {},
                title: const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: const Icon(
                  Icons.privacy_tip,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {},
                title: const Text(
                  "Privacy",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: const Icon(
                  Icons.developer_mode,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {},
                title: const Text(
                  "Developer Info",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: const SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
