import 'package:bata_app_flutter_demo/utils/bt_color.dart';
import 'package:flutter/material.dart';

import 'density_page.dart';

class HomeChatPage extends StatefulWidget {
  @override
  _HomeChatPageState createState() => _HomeChatPageState();
}

class _HomeChatPageState extends State<HomeChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Center(
                child: Text(
              "消息",
              style: TextStyle(color: BtColor.white, fontSize: 18),
            )),
            color: BtColor.color_defult,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "暂无消息",
              style: TextStyle(color: BtColor.color_999999, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  _openDensityView();
                },
                child: Container(
                  color: BtColor.color_6cb0d2,
                  width: 100,
                  height: 50,
                  child: Center(child: Text("适配",style:TextStyle(color: BtColor.white, fontSize: 16) ,)),
                ),
              ),
            ],
          )
        ],
      ),
      color: BtColor.white,
    );
  }

  void _openDensityView(){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DensityPage()));
  }
}
