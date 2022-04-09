import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiulinks_app/utilities/styles.dart';

class schedule extends StatefulWidget {
  @override
  _scheduleState createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController date_controller = new TextEditingController();
    TextEditingController time_controller = new TextEditingController();
    return Material(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(
                   maxHeight: height * 0.35,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/schedule img.png"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                ),
              ),
              SizedBox(height: height * 0.05),
              Text("Agenda tu clase", style: styles.heading1(context).copyWith(color: Colors.white),),
              SizedBox(height: height * 0.02,),
              Text("Vive, Aprende y Ama.", style: styles.heading4(context).copyWith(color: Colors.white),),
              Text("Es hora de hacer tus sueños realidad", style: styles.heading4(context).copyWith(color: Colors.white),),
              SizedBox(height: height * 0.05,),
              TextFormField(

              ),

            ],
          ),
        ),
      ),
    );
  }
}
