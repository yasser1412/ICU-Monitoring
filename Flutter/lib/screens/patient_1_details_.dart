import 'package:flutter/material.dart';
import 'package:icu_controller/widgets/charts.dart';
import 'package:http/http.dart' as http;

class PatientOneDetailsScreen extends StatelessWidget {

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
      body: Charts(patientNumber: 0, height: height),
    );
  }
}
