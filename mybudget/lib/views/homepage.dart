import 'package:flutter/material.dart';

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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: AnimatedOpacity(
                        opacity: visiblei ? 1.0 : 0.0,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeIn,
                        child: Image.asset(
                          'assets/images/smartphone.png',
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedOpacity(
                      opacity: visiblet1 ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Nice phone , can I buy it ?",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    AnimatedOpacity(
                      opacity: visiblet2 ? 1.0 : 0.0,
                      duration: const Duration(seconds: 3),
                      curve: Curves.easeIn,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Mahfadhati will tell you!",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "Let's get started",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
