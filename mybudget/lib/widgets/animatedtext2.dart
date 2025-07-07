
import 'package:flutter/material.dart';

class AnimatedText2 extends StatelessWidget {
  const AnimatedText2({
    super.key,
    required this.visiblet2,
  });

  final bool visiblet2;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
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
    );
  }
}


// Second Text shape 
class AnimatedFirst extends StatelessWidget {
  const AnimatedFirst({
    super.key,
    required this.visiblet1,
  });

  final bool visiblet1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
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
    );
  }
}


//Animated Image 
class AnimatedImage extends StatelessWidget {
  const AnimatedImage({
    super.key,
    required this.visiblei,
    required this.visiblet1,
    required this.visiblet2,
  });

  final bool visiblei;
  final bool visiblet1;
  final bool visiblet2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          AnimatedFirst(visiblet1: visiblet1),
          const SizedBox(height: 15),
          AnimatedText2(visiblet2: visiblet2),
        ],
      ),
    );
  }
}


