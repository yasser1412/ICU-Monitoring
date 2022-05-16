import 'package:flutter/material.dart';
import 'package:icu_controller/screens/patients_list_screen.dart';

class RoomsListScreen extends StatelessWidget {
  const RoomsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('ROOMS LIST')),
      body: Column(
        children: [
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PatientsListScreen(roomNumber: 0),
              ),
            ),
            child: Stack(
              children: [
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: Container(
                    height: height * 0.3,
                    width: width,
                    child: Image.asset(
                      'assets/1.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 5,
                  child: Container(
                    width: 300,
                    child: Text(
                      'ROOM 1',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PatientsListScreen(roomNumber: 1),
              ),
            ),
            child: Stack(
              children: [
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: Container(
                    height: height * 0.3,
                    width: width,
                    child: Image.asset(
                      'assets/2.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 5,
                  child: Container(
                    width: 300,
                    child: Text(
                      'ROOM 2',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
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
}
