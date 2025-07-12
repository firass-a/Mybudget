import 'package:flutter/material.dart';

class ReusableBt extends StatelessWidget {
  const ReusableBt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blueAccent,
        ),
        child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_forward, color: Colors.white),
        ),
      ),
    );
  }
}
