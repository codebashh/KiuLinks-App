import 'package:flutter/material.dart';
class schedule extends StatefulWidget {
  @override
  _scheduleState createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: height * 0.3,
                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/schedule image.png"),
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
