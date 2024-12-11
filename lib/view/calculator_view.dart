import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Display area
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(16),
              child: const Text(
                "0",
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Buttons grid
          Expanded(
            flex: 5,
            child: GridView.count(
              padding: const EdgeInsets.all(8),
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                // Buttons
                ...["7", "8", "9", "÷", "4", "5", "6", "×", "1", "2", "3", "-", "C", "0", "=", "+"].map(
                      (label) => ElevatedButton(
                    onPressed: () {
                      // Placeholder action for button press
                      print("Button $label pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isOperator(label) ? Colors.orange : Colors.grey[800],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      label,
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to style operator buttons
  bool _isOperator(String label) {
    return ["÷", "×", "-", "+", "="].contains(label);
  }
}