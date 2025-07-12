import 'package:flutter/material.dart';
import 'package:mybudget/widgets/proofs.dart';

class DebtPage extends StatelessWidget {
  const DebtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Proofs(
        text:
            "50% of our users went debt free with the help of mahfadati application",
        src: "assets/images/debt-free.png",
      ),
    );
  }
}
