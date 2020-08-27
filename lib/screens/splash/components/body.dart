import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:selline/constants.dart';
import 'package:selline/screens/splash/components/splash_content.dart';
import 'package:selline/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/splash.png",
      "text": "Prontxs para vender?",
    },
    {
      "image": "assets/images/splash.png",
      "text": "tudo que você imaginar",
    },
    {
      "image": "assets/images/splash.png",
      "text": "Em um só lugar",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: PageView.builder(
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplashContent(
                        image: splashData[index]["image"],
                        text: splashData[index]["text"],
                      ),
                    )),
                Expanded(flex: 2, child: SizedBox())
              ],
            )));
  }
}
