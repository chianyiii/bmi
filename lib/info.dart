import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  // Accept BMI value
  final String bmi;
  const Info({super.key, required this.bmi});   // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Mass Index Info'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Body mass index (BMI) is a value derived from the mass (weight) '
                    'and height of a person.\n\nThe BMI is defined as the body mass '
                    'divided by the square of the body height, and is expressed in '
                    'units of kg/m², resulting from mass in kilograms (kg) and height '
                    'in metres (m).',
              ),

              //Table of information
              Table(
                border: TableBorder.all(color: Colors.orangeAccent),
                children: const [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'BMI Value',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Classification',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('Below 18.5')),
                      ),
                      TableCell(
                        child: Center(child: Text('Underweight')),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('18.5 – 24.9')),
                      ),
                      TableCell(
                        child: Center(child: Text('Normal weight')),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('25 – 29.9')),
                      ),
                      TableCell(
                        child: Center(child: Text('Overweight')),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('30 and above')),
                      ),
                      TableCell(
                        child: Center(child: Text('Obesity')),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              bmi == ''
                  ? const Text('Please enter your weight and height.')
                  : Text('Your Body Mass Index (BMI) is : $bmi'),

              const Spacer(),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
