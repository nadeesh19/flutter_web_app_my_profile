import 'package:flutter/material.dart';
import 'package:flutter_web_app/responsive_widget.dart';
import 'package:flutter_web_app/model_widgets/NaviButton.dart';

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavButton(
                text: "Github",
                onPressed: () {},
                color: Colors.blue,
              ),

              NavButton(
                text: "Twitter",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "FaceBook",
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),

          Text(
            "Nadeesha Maduman Amarasinghe @2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),

      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          NavButton(
            text: "Github",
            onPressed: () {},
            color: Colors.blue,
          ),

          NavButton(
            text: "Twitter",
            onPressed: () {},
            color: Colors.blue,
          ),
          NavButton(
            text: "FaceBook",
            onPressed: () {},
            color: Colors.blue,
          ),

          Text(
            "Nadeesha Maduman Amarasinghe @2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}