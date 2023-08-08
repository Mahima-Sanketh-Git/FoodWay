import 'package:flutter/material.dart';
import 'package:foodway/screens/home.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:foodway/constants/colors.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

List<String> list = [];
List<String> listimg = [];
List<String> listprice = [];

String image = "";
late String text;
late String price;
int cart = 0;

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: bcolor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.w600,
                    color: tcolor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cart,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 300,
                      height: 76,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffede4ff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              listimg[index],
                              width: 80,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 30),
                              child: Column(
                                children: [
                                  Text(
                                    list[index],
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    listprice[index],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: IconButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.delete_forever,
                                  size: 50,
                                  color: Color.fromARGB(255, 216, 14, 0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        selectedIndex: 1,
        tabMargin: const EdgeInsets.symmetric(horizontal: 8),
        backgroundColor: stcolor,
        activeColor: Colors.white,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        hoverColor: Colors.grey,
        tabBackgroundColor: Colors.grey,
        gap: 8,
        tabs: [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          const GButton(
            icon: LineIcons.shoppingCart,
            text: 'Cart',
          ),
          const GButton(
            icon: LineIcons.search,
            text: 'Search',
          ),
          const GButton(
            icon: LineIcons.user,
            text: 'User',
          ),
        ],
      ),
    );
  }
}
