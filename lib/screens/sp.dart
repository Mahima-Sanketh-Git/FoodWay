import 'package:flutter/material.dart';
import 'package:foodway/constants/colors.dart';
import 'package:foodway/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodway/screens/cart.dart';

class Sburger extends StatelessWidget {
  const Sburger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 390,
              height: 303,
              decoration: const BoxDecoration(
                color: Color(0xff2f58cd),
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(40),
                  bottomStart: Radius.circular(40),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 35),
                    child: Image.asset(
                      "assets/big.png", //!chnage
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Spicy Burger", //!change
                    style: GoogleFonts.openSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: hcolor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "A hamburger, or simply burger, is a sandwich consisting of fillings usually a patty of ground meat, typically beef placed inside a sliced bun or bread roll.",
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: GoogleFonts.openSans(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: tcolor,
                        ),
                      ),
                      Image.asset("assets/Arrow.png"),
                      Text(
                        "\$160",
                        style: GoogleFonts.openSans(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        fun(context);
                        cart = cart + 1;
                        list.add('Spicy Burger');
                        listimg.add("assets/b.png");
                        listprice.add("\$160");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Cart()));
                      },
                      child: Container(
                        width: 315,
                        height: 67,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff4e31aa),
                        ),
                        child: const Center(
                          child: Text(
                            "Oder Now",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
