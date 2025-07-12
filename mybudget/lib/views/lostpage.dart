import 'package:flutter/material.dart';
import 'package:mybudget/widgets/proofs.dart';

class LostPage extends StatelessWidget {
  const LostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Proofs(
        text:
            "70% from our users made so much progress and improved their income with our help",
        src: "assets/images/money.png",
      ),
    );
  }
}
