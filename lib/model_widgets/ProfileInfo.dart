import 'package:flutter/material.dart';
import 'package:flutter_web_app/responsive_widget.dart';

class ProfileInfo extends StatelessWidget {
  
  ProfileImage(context) => AnimatedContainer(
    duration: Duration(seconds: 1),
    height: ResponsiveWidget.isSmallScreen(context)
      ? MediaQuery.of(context).size.height *0.25
      :MediaQuery.of(context).size.width *0.25,
    width: ResponsiveWidget.isSmallScreen(context)
      ? MediaQuery.of(context).size.height *0.25
      :MediaQuery.of(context).size.width *0.25,
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.luminosity,
      color: Colors.deepOrange,
      shape: BoxShape.circle,
      image: DecorationImage(
        image : AssetImage("nadeesha.png"),
        alignment: Alignment.center,
        fit: BoxFit.cover
      ),
    ),

  );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.orange),
      ),
      Text(
        "Nadeesha\nMaduman",
        textScaleFactor: 4,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(
        height: 10,
      ),

      Text("I'm a Computer Engineer with a high interest in \ncomputer networks, software and cloud field.\nI'm passionate about learning and applying\n what I learn to solve problems in real world.\nMy objective is to learn and \nto use that knowledge for the \nbetterment of the world.",
          softWrap: true,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Resume"),
            color: Colors.red,
            onPressed: (){},
            padding: EdgeInsets.all(10),
          ),

          SizedBox(
            width: 20,
          ),

          OutlineButton(
            borderSide: BorderSide(
              color: Colors.red
            ),
            shape: StadiumBorder(),
            child: Text("Say Hi!"),
            color: Colors.red,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          )
        ],
      )
    ],
  );


  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ProfileImage(context),
          profileData
        ],
      ),

      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ProfileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),

    );
  }
}