import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final double result;
  final bool isMale;
  final double height;
  final int age;
  final int weight;

  const BmiResultScreen({Key? key,
    required this.result,
    required this.isMale,
    required this.age,
    required this.weight,
    required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Results',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender = ${isMale ? 'Male' : 'Female'}',
              style:const  TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Height = ${height.round()}',
              style:const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age = $age',
              style:const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Weight = $weight',
              style:const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result = ${result.round()}',
              style:const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
