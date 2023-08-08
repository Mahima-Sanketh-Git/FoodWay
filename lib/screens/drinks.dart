import 'package:flutter/material.dart';
import 'package:foodway/constants/colors.dart';
import 'package:foodway/screens/cart.dart';
import 'package:foodway/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Drink extends StatefulWidget {
  const Drink({super.key});

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
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
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Drinks",
                  style: GoogleFonts.openSans(
                    fontSize: 60,
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
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                child: Text(
                  "Hot Deals",
                  style: GoogleFonts.openSans(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: hcolor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  fun(context);
                  setState(() {
                    cart = cart + 1;
                    list.add('Medium Cola');
                    listimg.add("assets/c.png");
                    listprice.add("\$560");
                  });
                },
                child: Center(
                  child: Container(
                    width: 344,
                    height: 149,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffede4ff),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Text(
                                  "Medium Cola",
                                  style: GoogleFonts.openSans(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "\$560",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Best Version Of Burgers",
                                      style: GoogleFonts.openSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.add_circle_outline_rounded,
                                      size: 30,
                                      color: Colors.pink,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 40),
                                    child: Image.asset("assets/c.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Text(
                  "Popular",
                  style: GoogleFonts.openSans(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: hcolor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 166,
                      height: 214,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffede4ff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Image.asset("assets/ew.png"),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Coke Cola",
                              style: GoogleFonts.openSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "\$160",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      fun(context);
                                      setState(() {
                                        cart = cart + 1;
                                        list.add('Coke Cola');
                                        listimg.add("assets/ew.png");
                                        listprice.add("\$160");
                                      });
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: Colors.pink,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 166,
                      height: 214,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffede4ff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Image.asset("assets/er.png"),
                            Text(
                              "Medium Coke",
                              style: GoogleFonts.openSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "\$360",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      fun(context);
                                      setState(() {
                                        cart = cart + 1;
                                        list.add('Medium Coke');
                                        listimg.add("assets/er.png");
                                        listprice.add("\$360");
                                      });
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: Colors.pink,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 166,
                      height: 214,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffede4ff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Image.asset("assets/ew.png"),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Coke Cola",
                              style: GoogleFonts.openSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "\$160",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      fun(context);
                                      setState(() {
                                        cart = cart + 1;
                                        list.add('Coke Cola');
                                        listimg.add("assets/ops.png");
                                        listprice.add("\$160");
                                      });
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: Colors.pink,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 166,
                      height: 214,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffede4ff),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Image.asset("assets/er.png"),
                          Text(
                            "Medium Cola",
                            style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "\$360",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    fun(context);
                                    setState(() {
                                      cart = cart + 1;
                                      list.add('Medium Cola');
                                      listimg.add("assets/ops.png");
                                      listprice.add("\$360");
                                    });
                                  });
                                },
                                icon: const Icon(
                                  Icons.add_circle_outline_rounded,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), //!to
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
        //tabBackgroundColor: Colors.grey,
        gap: 8,
        tabs: [
          GButton(
            icon: LineIcons.home,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          GButton(
            icon: LineIcons.shoppingCart,
            text: 'Cart',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cart()));
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
