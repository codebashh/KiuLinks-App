import 'package:flutter/material.dart';
import 'package:kiulinks_app/main.dart';
import 'package:kiulinks_app/utilities/SizeConfig.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle heading1 = TextStyle(       //used for two main header texts
          fontSize: 6.2 * SizeConfig.blockSizeHorizontal,
        fontWeight: FontWeight.w800,
        color: Theme.of(context).primaryColor);
    TextStyle heading2 = TextStyle(        //used for header text in cards
        fontSize: 5.2 * SizeConfig.blockSizeHorizontal,
        fontWeight: FontWeight.w800,
        color: Theme.of(context).primaryColor);
    TextStyle heading3 = TextStyle(       //used for subtext in cards and screen header
        fontSize: 4.2 * SizeConfig.blockSizeHorizontal,
        color: Theme.of(context).primaryColor);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
      children: [
        //header , user profile and greeting
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005),
          child: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08),
              // width: MediaQuery.of(context).size.width * 0.45,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  "Hola! Usuario",
                  style: TextStyle(
                    fontSize: 4.6 * SizeConfig.blockSizeHorizontal,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Gracias por visitarnos!",
                  //style: Theme.of(context).textTheme.headline5,
                  style: TextStyle(       //used for subtext in cards and screen header
                      fontSize: 3.6 * SizeConfig.blockSizeHorizontal,
                      color: Theme.of(context).primaryColor),
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
              left: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Es un placer recibirte !!",
                style: heading3,
                //style: style1,
              ),
              Text(
                "Elige tu ruta",
                style: heading1,
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
            GestureDetector(
              onTap: () => {},
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.27,
                    left: MediaQuery.of(context).size.width * 0.05),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.1,
                      backgroundColor: Theme.of(context).backgroundColor,
                      child: Container(
                          child: Image.asset(
                        "assets/live.png",
                        width: MediaQuery.of(context).size.width * 0.13,
                      )),
                    ),
                    Text(
                      "En vivo",
                      //style: Theme.of(context).textTheme.headline2,
                      style: heading2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Ingresa a tu próxima clase",
                          style: heading3,
                          textAlign: TextAlign.center,
                          //style: Theme.of(context).textTheme.headline5,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.27,
                    right: MediaQuery.of(context).size.width * 0.05),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.1,
                      backgroundColor: Theme.of(context).backgroundColor,
                      child: Container(
                          child: Image.asset(
                        "assets/gift.png",
                        width: MediaQuery.of(context).size.width * 0.13,
                      )),
                    ),
                    Text(
                      "Descurbre",
                      //style: Theme.of(context).textTheme.headline2,
                      style: heading2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Nuestros servicios gratis",
                          style: heading3,
                          textAlign: TextAlign.center,
                          //style: Theme.of(context).textTheme.headline5,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => {},
          child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.51,
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Text(
                "Conectar",
                //style: Theme.of(context).textTheme.headline1,
                style: heading1,
              )),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.57,
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.1,
              backgroundColor: Theme.of(context).backgroundColor,
              child: Container(
                  child: Image.asset(
                "assets/community.png",
                width: MediaQuery.of(context).size.width * 0.13,
              )),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Comunidad",
                  style: heading2,
                  //style: Theme.of(context).textTheme.headline2,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Acelera tu aprendizaje",
                    style: heading3,
                    //style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ],
            )
          ]),
        ),
        GestureDetector(
          onTap: () => {},
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.75,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05),
            child: Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.06,
              ),
              CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.1,
                backgroundColor: Theme.of(context).backgroundColor,
                child: Container(
                    child: Image.asset(
                  "assets/chat.png",
                  width: MediaQuery.of(context).size.width * 0.13,
                )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.06,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chat",
                    style: heading2,
                    //style: Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      "Hablar con un representante",
                      style: heading3,
                      //style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              )
            ]),
          ),
        )
      ],
    ));
  }
}
