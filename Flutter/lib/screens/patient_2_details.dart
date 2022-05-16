import 'package:flutter/material.dart';
import 'package:icu_controller/widgets/charts.dart';

class PatientTwoDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VITAL SIGNALS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Charts(patientNumber: 1, height: height),
    );
  }
}
