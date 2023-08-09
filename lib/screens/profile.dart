import 'package:flutter/material.dart';
import 'package:foodway/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodway/screens/home.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                  horizontal: 8,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Create Account",
                  style: GoogleFonts.openSans(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: tcolor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset("assets/mn.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    filled: true,
                    fillColor: Color(0xffede4ff),
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    filled: true,
                    fillColor: Color(0xffede4ff),
                    hintText: "Password",
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
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
                      "Sign In",
                      style: GoogleFonts.openSans(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Column(
                children: [
                  Text(
                    "Terms & Condition Copyright @2023 All Reserved",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
