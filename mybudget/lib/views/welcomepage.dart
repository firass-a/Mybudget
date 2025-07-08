import 'package:flutter/material.dart';
import 'package:mybudget/views/infoscreen.dart';
import 'package:mybudget/widgets/animatedtext2.dart';

class WelocmePage extends StatefulWidget {
  const WelocmePage({super.key});

  @override
  State<WelocmePage> createState() => _WelocmePageState();
}

class _WelocmePageState extends State<WelocmePage> {
  bool visible = false;
  bool visible1 = false;
  bool showImage = false;
  bool showText = false;
  bool imWorried = false;
  bool safetyText = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        visible = true;
      });
      Future.delayed(const Duration(milliseconds: 1000), () {
        setState(() {
          visible1 = true;
        });
      });
      Future.delayed(const Duration(milliseconds: 2000), () {
        setState(() {
          showImage = true;
        });
      });
      Future.delayed(const Duration(milliseconds: 3000), () {
        setState(() {
          showText = true;
        });
      });

      Future.delayed(const Duration(milliseconds: 4000), () {
        setState(() {
          imWorried = true;
        });
      });
      Future.delayed(const Duration(milliseconds: 5000), () {
        setState(() {
          safetyText = true;
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
              Expanded(
                child: Column(
                  children: [
                    AnimatedOpacity(
                      opacity: visible ? 1.0 : 0.0,
                      duration: Duration(seconds: 2),
                      curve: Curves.easeIn,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.indigo,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Balance : 30000.00 da",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    AnimatedFirst(
                      visiblet1: visible1,
                      txt: "Oh great i can get that !",
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AnimatedFirst(
                            visiblet1: showText,
                            txt: "oh but I need clothes !",
                          ),
                          AnimatedOpacity(
                            opacity: showImage ? 1.0 : 0.0,
                            duration: Duration(seconds: 2),
                            curve: Curves.ease,
                            child: Image.asset(
                              "assets/images/brand.png",
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          AnimatedOpacity(
                            opacity: showImage ? 1.0 : 0.0,
                            duration: Duration(seconds: 2),
                            curve: Curves.ease,
                            child: Image.asset(
                              "assets/images/giftbox.png",
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(width: 15),
                          AnimatedFirst(
                            visiblet1: showText,
                            txt: "And a gift to mom !",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          AnimatedFirst(
                            visiblet1: showText,
                            txt: "And i still need to go gym",
                          ),

                          AnimatedOpacity(
                            opacity: showImage ? 1.0 : 0.0,
                            duration: Duration(seconds: 2),
                            curve: Curves.ease,
                            child: Image.asset(
                              "assets/images/gym.png",
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    AnimatedOpacity(
                      opacity: imWorried ? 1.0 : 0.0,
                      duration: Duration(seconds: 3),
                      curve: Curves.ease,
                      child: Text(
                        "Thats a lot :(",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              AnimatedOpacity(
                opacity: safetyText ? 1.0 : 0.0,
                duration: Duration(seconds: 4),
                curve: Curves.easeInBack,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Infos()),
                        );
                      },
                      child: Text(
                        "Dont worry we got you !",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
