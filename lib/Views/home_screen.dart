import 'package:flutter/material.dart';
import 'package:kiulinks_app/utilities/SizeConfig.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //header , user profile and greeting
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
          child: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08),
              width: MediaQuery.of(context).size.width * 0.35,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  "Hola! Usuario",
                  style: TextStyle(
                    fontSize: 5 * SizeConfig.blockSizeHorizontal,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Buenos días!",
                  style: TextStyle(
                    fontSize: 3 * SizeConfig.blockSizeHorizontal,
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
              ),
              width: MediaQuery.of(context).size.width * 0.14,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.08,
                backgroundImage: AssetImage("assets/profile icon.png"),
                backgroundColor: Colors.blue,
              ),
            )
          ]),
        ),

        //subheading for route choosing
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.18,
              left: MediaQuery.of(context).size.width * 0.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Es un placer recibirte !!",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Elige tu ruta",
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),

        //Join and Schedule class route cards
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.27,
                  left: MediaQuery.of(context).size.width * 0.07),
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.27,
                  right: MediaQuery.of(context).size.width * 0.07),
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
            ),
          ],
        ),
        Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.51,
                left: MediaQuery.of(context).size.width * 0.07),
            child: Text(
              "Conectar",
              style: Theme.of(context).textTheme.headline4,
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.57,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.75,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07),
        )
      ],
    );
  }
}
