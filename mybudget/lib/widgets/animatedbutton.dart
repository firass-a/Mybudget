import 'package:flutter/material.dart';
import 'package:mybudget/views/welcomepage.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({super.key, required this.visiblet});

  final bool visiblet;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visiblet ? 1.0 : 0.0,
      duration: const Duration(seconds: 3),
      curve: Curves.easeIn,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelocmePage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "How much money do you have ?",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
