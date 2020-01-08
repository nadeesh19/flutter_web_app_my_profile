import 'package:flutter/material.dart';
import 'package:flutter_web_app/model_widgets/NaviButton.dart';
import 'package:flutter_web_app/responsive_widget.dart';
import 'dart:html' as html;

class NaviHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context) 
          ? MainAxisAlignment.center
          : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          NMADot(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
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
            )
          
        ],
      ),
    );
  }
}

class NMADot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "NMA",
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),

        SizedBox(
          width: 5,
        ),

        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange
          ),
        )

      ],
    );
  }
} 
