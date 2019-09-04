import 'dart:async';

import 'package:bata_app_flutter_demo/home/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "bata flutter demo",
      color: Colors.white,
      home: Splash(),
    );
  }

}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();

  @override
  StatefulElement createElement() {
    return super.createElement();
  }

}

class _SplashState extends State<Splash> {

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  @override
  void initState() {
    doTimer(context);
    super.initState();
  }
  Timer timer;
  void doTimer(BuildContext context){
    timer = Timer(Duration(milliseconds: 1000),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()), (rout)=>rout == null);
//      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
//      timer.cancel();
      if (defaultTargetPlatform == TargetPlatform.android) {

      }else if(defaultTargetPlatform == TargetPlatform.iOS){

      }else if(defaultTargetPlatform == TargetPlatform.fuchsia){

      }

    });
  }
  @override
  Widget build(BuildContext context) {

    return Container(color: Colors.white,
    child: Center(child: Image.asset("img/welcomeTopPic.png"),),
    );
  }
}
