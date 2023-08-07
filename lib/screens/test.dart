import 'package:flutter/material.dart';

class Mytest extends StatefulWidget {
  const Mytest({super.key});

  @override
  State<Mytest> createState() => _MytestState();
}

bool isclick = false;

class _MytestState extends State<Mytest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isclick = true;
                });
              },
              icon: const Icon(
                Icons.add,
                size: 50,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return myfun(isclick);
              },
            )
          ],
        ),
      ),
    );
  }
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
