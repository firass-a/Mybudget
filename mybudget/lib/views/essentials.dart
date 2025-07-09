import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Essentials extends StatefulWidget {
  const Essentials({super.key});

  @override
  State<Essentials> createState() => _EssentialsState();
}

class _EssentialsState extends State<Essentials> {
  int currentStep = 1;

  List<String> reasons = [
    "💳 Drowning in debt",
    "😓 I'm overwhelmed",
    "🥴 Don't know where my money goes",
    "💪 want to make the most out of my money",
  ];

  void _incrementCounter() {
    if (currentStep <= 6) {
      setState(() {
        currentStep++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: LinearProgressBar(
                  maxSteps: 6,
                  progressType: LinearProgressBar.progressTypeLinear,
                  minHeight: 5,
                  progressColor: Colors.indigo[900],
                  backgroundColor: Colors.black,
                  currentStep: currentStep,
                ),
              ),
              Center(
                child: Text(
                  "What brings you to mahfadati today ? ",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: reasons.length,
                  itemBuilder: (context, index) {
                    final reason = reasons[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blueGrey[900],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            reason,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      _incrementCounter();
                    },
                    icon: Icon(Icons.arrow_forward),
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
