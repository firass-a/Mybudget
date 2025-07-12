import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:mybudget/providers/reasonsprovider.dart';

// Define a provider for your step count
final currentStepProvider = StateProvider<int>((ref) => 1);

class Essentials extends ConsumerWidget {
  const Essentials({super.key});

 
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(currentStepProvider);
    final reason = ref.watch(reasonsProvider);

    void incrementCounter() {
      if (currentStep < 6) {
        ref.read(currentStepProvider.notifier).state++;
      }
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
                  backgroundColor: Colors.grey,
                  currentStep: currentStep,
                ),
              ),
              Center(
                child: Text(
                  "What brings you to mahfadati today ?",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: reason.length,
                  itemBuilder: (context, index) {
                    final rsn = reason[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => rsn.page),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blueGrey[900],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            rsn.text,
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
                    onPressed: incrementCounter,
                    icon: Icon(Icons.arrow_forward, color: Colors.white),
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
