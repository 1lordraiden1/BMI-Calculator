import 'package:flutter/material.dart';
import 'bmi_main.dart';

class BmiResultScreen extends StatelessWidget {
  final bool? isMale;
  final int? result;
  final int? age;
  BmiResultScreen({
    @required this.isMale,
    @required this.result,
    @required this.age,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text(
            'BMI Result',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(

              'Gender : ${(isMale ?? true ) ? 'Male' : 'Female'} ',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result :$result',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
