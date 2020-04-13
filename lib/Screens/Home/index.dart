import 'package:flutter/material.dart';
import 'styles.dart';
import 'loginAnimation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/animation.dart';
import 'dart:async';
import '../../Components/Button.dart';
import '../../Components/Entry.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
//flutter packages pub run flutter_launcher_icons:main

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController _loginButtonController;
  var animationStatus = 0;
  @override
  void initState() {
    super.initState();
    _loginButtonController = new AnimationController(
        duration: new Duration(milliseconds: 3000), vsync: this);
  }

  @override
  void dispose() {
    _loginButtonController.dispose();
    super.dispose();
  }

  Future<Null> _playAnimation() async {
    try {
      await _loginButtonController.forward();
      await _loginButtonController.reverse();
    } on TickerCanceled {}
  }

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          child: new AlertDialog(
            title: new Text('Are you sure?'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () =>
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
                child: new Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    var lang="Ar" ;
    timeDilation = 0.4;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return (new WillPopScope(
        onWillPop: _onWillPop,
        child: SafeArea(
          child: new Scaffold(
            body: new Container(
                decoration: new BoxDecoration(
                  image: backgroundImage,
                ),
                child: new Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      colors: <Color>[
                        const Color.fromRGBO(162, 146, 199, 0.8),
                        const Color.fromRGBO(51, 51, 63, 0.9),
                      ],
                      stops: [0.2, 1.0],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.0, 1.0),
                    )),
                    child: new ListView(
                      padding: const EdgeInsets.all(0.0),
                      children: <Widget>[
                        new Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: <Widget>[
                            Positioned(
                              top: deviceHeight*0.05,
                              child: Container(
                                child: lang=="Fr" ? Text(
                                  "En cas d'urgence, appelez le 190",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ) :
                                Text(
                                  "في حالة الطوارئ، اتصل بالرقم 190",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                              ),
                            ),
                            Positioned(
                              top: deviceHeight*0.08,
                              child: Container(
                                child:
                                    Icon(Icons.call, color: Colors.green[900]),
                              ),
                            ),
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(height: 150),
                                new Text(
                                  "Billkamcha",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                new Text(
                                  "Covid-19",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                ),

                                new Button()
                              ],
                            ),
                            animationStatus == 0
                                ? new Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 50.0),
                                    child: new InkWell(
                                        onTap: () {
                                          setState(() {
                                            animationStatus = 1;
                                          });
                                          _playAnimation();
                                        },
                                        child: new Entry()),
                                  )
                                : new StaggerAnimation(
                                    buttonController:
                                        _loginButtonController.view),
                                        
                          ],
                        ),
                        SizedBox(height:deviceHeight*0.015),
                        Container(
                                  color: Color.fromRGBO(255, 255, 255, 0.5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      new Image.asset(
                                        "assets/ministere.png",
                                        width: deviceWidth*0.15,
                                        height: deviceHeight*0.15,
                                      ),
                                       new Image.asset(
                                        "assets/junior2.png",
                                        width: deviceWidth*0.15,
                                        height: deviceHeight*0.15,
                                      ),
                                      new Image.asset(
                                        "assets/logo.png",
                                        width: deviceWidth*0.15,
                                        height: deviceHeight*0.15,
                                      ),
                                      new Image.asset(
                                        "assets/obs.png",
                                        width: deviceWidth*0.15,
                                        height: deviceHeight*0.15,
                                      ),
                                    ],
                                  ),
                                ),
                      ],
                    ))),
          ),
        )));
  }
}
