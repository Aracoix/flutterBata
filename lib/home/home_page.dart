import 'package:bata_app_flutter_demo/home/home_bottom_bt.dart';
import 'package:bata_app_flutter_demo/home/main_page_stack.dart';
import 'package:bata_app_flutter_demo/utils/bt_color.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(height: MediaQueryData.fromWindow(window).padding.top,color: BtColor.color_defult,),
          Expanded(child: MainPageStack(),flex: 13,),
          Expanded(child: HomeBottomBt(),flex: 1,)
        ],
      ),
       );
  }
}
