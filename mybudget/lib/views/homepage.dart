import 'package:flutter/material.dart';
import 'package:mybudget/widgets/animatedtext2.dart';
import 'package:mybudget/widgets/animatedbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimationHomePage();
  }
}

class AnimationHomePage extends StatefulWidget {
  const AnimationHomePage({super.key});

  @override
  State<AnimationHomePage> createState() => _AnimationHomePageState();
}

class _AnimationHomePageState extends State<AnimationHomePage> {
  bool visiblei = false;
  bool visiblet1 = false;
  bool visiblet2 = false;
  bool visiblebt = false;

  @override
  void initState() {
    super.initState();
    // Start image fade in first
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        visiblei = true;
      });

      // When image animation is done (after 3s), start text fade
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          visiblet1 = true;
        });
      });
      Future.delayed(const Duration(seconds: 5), () {
        setState(() {
          visiblet2 = true;
        });
      });
      Future.delayed(const Duration(seconds: 7), () {
        setState(() {
          visiblebt = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // This Expanded makes the column with image + texts
              // centered vertically in available space
              AnimatedImage(
                visiblei: visiblei,
                visiblet1: visiblet1,
                visiblet2: visiblet2,
              ),
              // Button pinned to bottom
              AnimatedButton(visiblet: visiblebt),
            ],
          ),
        ),
      ),
    );
  }
}
