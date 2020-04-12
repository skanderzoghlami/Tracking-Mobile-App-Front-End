import 'package:dribbbledanimation/models/ReportRow.dart';
import 'package:dribbbledanimation/models/rapports.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  var langu = "Fr";
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    const Color loginPageBackground = const Color(0xFF736AB7);

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: langu == "Ar"
              ? Image.asset(
                  "assets/france.jpg",
                  width: deviceWidth * 0.1,
                )
              : Image.asset(
                  "assets/tunisie.png",
                  width: deviceWidth * 0.1,
                ),
          onPressed: () {
            print("Button clicked");
            if (langu == "Fr") {
              setState(() {
                langu = "Ar";
              });
            } else {
              setState(() {
                langu = "Fr";
              });
            }
          },
          backgroundColor: Colors.grey,
        ),
        body: Row(children: <Widget>[
          Expanded(
            child: new ListView.builder(
              shrinkWrap: true,
              itemExtent: 160.0,
              itemCount: 7,
              itemBuilder: (_, index) => langu == "Fr"
                  ? new ReportRow(RapportsUI.rapports[index])
                  : new ReportRow(RapportsUI.rapportsAr[index]),
            ),
          ),
        ]));
  }
}
