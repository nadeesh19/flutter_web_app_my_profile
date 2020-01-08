import 'package:flutter/material.dart';
import 'package:flutter_web_app/NaviHeader.dart';
import 'package:flutter_web_app/model_widgets/NaviButton.dart';
import 'package:flutter_web_app/model_widgets/ProfileInfo.dart';
import 'package:flutter_web_app/model_widgets/SocialInfo.dart';
import 'package:flutter_web_app/responsive_widget.dart';
import 'dart:html' as html;

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context) ? Drawer(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              NavButton(
                  text: "About",
                  onPressed: (){
                    html.window.open("https://lk.linkedin.com/in/nadeesha-maduman-amarasinghe-amiesl-5a6439bb", "NMA");
                  },
                ),
                NavButton(
                  text: "Work",
                  onPressed: (){
                    html.window.open("https://eyepax.com", "NMA");
                  },
                ),
                NavButton(
                  text: "Contact",
                  onPressed: (){

                  },
                ),
            ],
          ),
        ) : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NaviHeader(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *0.2,
                  ),
                  SocialInfo(),
                  
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}