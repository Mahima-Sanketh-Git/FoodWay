import 'package:flutter/material.dart';
import 'package:foodway/constants/colors.dart';
import 'package:foodway/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  "assets/introimg.png",
                ),
              ),
            ),
            Text(
              "Enjoy",
              style: GoogleFonts.openSans(
                fontSize: 64,
                fontWeight: FontWeight.w700,
                color: tcolor,
              ),
            ),
            Text(
              "Your Food",
              style: GoogleFonts.openSans(
                fontSize: 64,
                fontWeight: FontWeight.w700,
                color: tcolor,
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                );
              },
              child: Container(
                width: 286,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xff4e31aa),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.openSans(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
