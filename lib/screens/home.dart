import 'package:flutter/material.dart';
import 'package:foodway/constants/colors.dart';

import 'package:foodway/screens/burgers.dart';
import 'package:foodway/screens/drinks.dart';
import 'package:foodway/screens/pizza.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:foodway/screens/cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

String image = "";
String text = "";
String price = "";
bool isclick = false;
int index = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Menu",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600,
              fontSize: 36,
              color: tcolor,
            ),
          ),
        ),
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Cart()));
                },
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
      //! body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    hintText: "Search",
                    hintStyle: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 73,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff14b8ff),
                      ),
                      child: Center(
                        child: Image.asset("assets/plate.png"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Burgers(),
                          ),
                        );
                      },
                      child: Container(
                        width: 73,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image.asset('assets/burger.png'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Pizza(),
                            ),
                          );
                        },
                        child: Container(
                          width: 73,
                          height: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Image.asset("assets/pizza.png"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Drink(),
                          ),
                        );
                      },
                      child: Container(
                        width: 73,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image.asset("assets/drinks.png"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "All",
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: stcolor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "Burgers",
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: stcolor,
                        ),
                      ),
                    ),
                    Text(
                      "Pizza",
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: stcolor,
                      ),
                    ),
                    Text(
                      "Drinks",
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: stcolor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Promotions",
                  style: GoogleFonts.openSans(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: tcolor,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  fun(context);
                  setState(() {
                    cart = cart + 1;
                    list.add('French Fries');
                    listimg.add("assets/French Fries.png");
                    listprice.add("\$1000");
                  });
                },
                child: SizedBox(
                  height: 150,
                  width: 338,
                  child: Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    children: [
                      Container(
                        width: 338,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff7c73c0),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 30,
                        child: Text(
                          "French Fries",
                          style: GoogleFonts.openSans(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 80,
                        left: 70,
                        child: Row(
                          children: [
                            Text(
                              "\$1000",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.add_circle_outline_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/French Fries.png",
                        alignment: Alignment.centerRight,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Popular",
                  style: GoogleFonts.openSans(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: tcolor,
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                width: double.infinity,
                height: 153,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 128,
                      height: 147,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffede4ff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/b.png"),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "spicy Burger",
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "\$100",
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(232, 15, 136, 1),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    fun(context);
                                    setState(() {
                                      cart = cart + 1;
                                      list.add('spicy Burger');
                                      listimg.add("assets/b.png");
                                      listprice.add("\$100");
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 128,
                      height: 147,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffede4ff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/pi.png"),
                            const SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Classic Pizza",
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "\$280",
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(232, 15, 136, 1),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    fun(context);
                                    setState(() {
                                      cart = cart + 1;
                                      list.add('Classic Pizza');
                                      listimg.add("assets/pi.png");
                                      listprice.add("\$280");
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 128,
                      height: 147,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffede4ff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/chips.png",
                              width: 58,
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Classic Rice",
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "\$580",
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(232, 15, 136, 1),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    fun(context);
                                    setState(() {
                                      cart = cart + 1;
                                      list.add('Classic Rice');
                                      listimg.add("assets/chips.png");
                                      listprice.add("\$580");
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 128,
                      height: 147,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffede4ff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/op.png",
                              height: 75,
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Submarine",
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "\$990",
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(232, 15, 136, 1),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    fun(context);
                                    setState(() {
                                      cart = cart + 1;
                                      list.add('Submarine');
                                      listimg.add("assets/op.png");
                                      listprice.add("\$990");
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        selectedIndex: 0,
        tabMargin: const EdgeInsets.symmetric(horizontal: 8),
        backgroundColor: stcolor,
        activeColor: Colors.white,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        hoverColor: Colors.grey,
        tabBackgroundColor: Colors.grey,
        gap: 8,
        tabs: [
          const GButton(
            icon: LineIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: LineIcons.shoppingCart,
            text: 'Cart',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cart()),
              );
            },
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

fun(context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: const EdgeInsets.only(bottom: 600),
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 1),
      content: AwesomeSnackbarContent(
          title: 'Succses',
          message: 'Sucssesfully added your food',
          contentType: ContentType.success),
    ),
  );
}

myfun(bool isclick) {
  if (isclick == true) {
    Container(
      width: 336,
      height: 76,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffede4ff),
      ),
    );
  } else {
    null;
  }
}
