import 'package:flutter/material.dart';
import 'package:mybudget/widgets/proofs.dart';

class OverwhelmedPage extends StatelessWidget {
  const OverwhelmedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Proofs(
        text: "60% of mahfadati users felt releived after using the app",
        src: "assets/images/rex.png",
      ),
    );
  }
}
