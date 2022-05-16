import 'package:flutter/material.dart';
import 'package:icu_controller/screens/patient_1_details_.dart';
import 'package:icu_controller/screens/patient_2_details.dart';
import 'package:icu_controller/screens/patient_3_details.dart';

class PatientsListScreen extends StatelessWidget {
  final int? roomNumber;
  const PatientsListScreen({Key? key, required this.roomNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Patients List',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      )),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text(
              'PATIENT 1',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PatientOneDetailsScreen(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text(
              'PATIENT 2',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PatientTwoDetailsScreen(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text(
              'PATIENT 3',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PatientThreeDetailsScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
