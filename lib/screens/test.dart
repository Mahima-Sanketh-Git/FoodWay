import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class Mytest extends StatefulWidget {
  const Mytest({super.key});

  @override
  State<Mytest> createState() => _MytestState();
}

class _MytestState extends State<Mytest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  QuickAlert.show(
                      context: context, type: QuickAlertType.success);
                },
                child: const Text("Click"))
          ],
        ),
      ),
    );
  }
}
