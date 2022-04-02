import 'package:flutter/material.dart';
import 'package:kiulinks_app/main.dart';
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
                  style: Theme.of(context).textTheme.headline5,
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
                style: Theme.of(context).textTheme.headline1,
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
              onTap: ()=>{},
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.27,
                    left: MediaQuery.of(context).size.width * 0.07),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.1,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Container(
                          child: Image.asset(
                        "assets/live.png",
                        width: MediaQuery.of(context).size.width * 0.13,
                      )),
                    ),
                    Text(
                      "En vivo",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Ingresa a tu próxima clase",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            GestureDetector(
              onTap: ()=>{},
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.27,
                    right: MediaQuery.of(context).size.width * 0.07),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.1,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Container(
                          child: Image.asset(
                            "assets/gift.png",
                            width: MediaQuery.of(context).size.width * 0.13,
                          )),
                    ),
                    Text(
                      "Descurbre",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "Nuestros servicios gratis",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: ()=>{},
          child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.51,
                  left: MediaQuery.of(context).size.width * 0.07),
              child: Text(
                "Conectar",
                style: Theme.of(context).textTheme.headline1,
              )),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.57,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07),
          child: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.06,),
              CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.1,
              backgroundColor: Theme.of(context).primaryColor,
              child: Container(
                  child: Image.asset(
                    "assets/community.png",
                    width: MediaQuery.of(context).size.width * 0.13,
                  )),
            ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.06,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Comunidad", style: Theme.of(context).textTheme.headline2,),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Acelera tu aprendizaje",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              )
          ]),

        ),
        GestureDetector(
          onTap: ()=>{},
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.75,
                left: MediaQuery.of(context).size.width * 0.07,
                right: MediaQuery.of(context).size.width * 0.07),
            child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.06,),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.1,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Container(
                        child: Image.asset(
                          "assets/chat.png",
                          width: MediaQuery.of(context).size.width * 0.13,
                        )),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.06,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Chat", style: Theme.of(context).textTheme.headline2,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          "Hablar con un representante",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        )
      ],
    );
  }
}
