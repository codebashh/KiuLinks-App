import 'package:flutter/material.dart';
import 'package:kiulinks_app/utilities/SizeConfig.dart';
class home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.2,
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
          child: Row(
            children:[
              SizedBox(width: MediaQuery.of(context).size.width*0.45,),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.08),
                width: MediaQuery.of(context).size.width*0.35,
                child: Column(
                  children: [
                Text(
                  "Hola! Usuario",
                  style: TextStyle(
                    fontSize: 4* SizeConfig.blockSizeHorizontal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                "       Buenos días!",
                  style: TextStyle(
                    fontSize: 3* SizeConfig.blockSizeHorizontal,
                  ),
                ),

              ]),),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.14,
                child:CircleAvatar(
                  radius: MediaQuery.of(context).size.width*0.08,
                  backgroundImage: AssetImage("assets/profile icon.png"),
                  backgroundColor: Colors.blue,
                ),
              )
            ]
          ),
        )
      ],
    );
  }
}
