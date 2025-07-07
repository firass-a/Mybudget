import 'package:flutter/material.dart';

class WelocmePage extends StatefulWidget {
  const WelocmePage({super.key});

  @override
  State<WelocmePage> createState() => _WelocmePageState();
}

class _WelocmePageState extends State<WelocmePage> {
  bool visible = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        visible = true;
      });
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.indigo,
              ),
              child: AnimatedOpacity(
                opacity: visible ? 1.0 : 0.0,
                duration: Duration(seconds: 1),
                child: Text("Balance : 10000.00 da"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
