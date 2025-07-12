import 'package:flutter/material.dart';
import 'package:mybudget/widgets/reusablebutton.dart';

class Proofs extends StatelessWidget {
  const Proofs({super.key , required this.src , required this.text});

  final String text;
  final String src;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    src,
                    height: 300,
                    width: 300,
                  ),
                  SizedBox(height: 15),
                  Text(
                   text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            ReusableBt(),
          ],
        ),
      ),
    );
  }
}
