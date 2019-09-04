import 'package:bata_app_flutter_demo/utils/bt_color.dart';
import 'package:flutter/material.dart';

class DensityPage extends StatefulWidget {
  @override
  _DensityPageState createState() => _DensityPageState();
}

class _DensityPageState extends State<DensityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          half(),
          Container(
            height: 10,
          ),
          sq(),
          full(),
          text(),
        ],
      ),
    );
  }

  Widget text(){
    return Column(
      children: <Widget>[
       Text("文字大小为 10",style: TextStyle(fontSize: 10),),
       Text("文字大小为 20",style: TextStyle(fontSize: 20),),
       Text("文字大小为 30",style: TextStyle(fontSize: 30),),
      ],
    );
  }

  Widget full() {
    return Row(
      children: <Widget>[
        Container(
          color: BtColor.color_e27e61,
          width: 360,
          height: 180,
          child: Center(child: Text("宽match 高为宽的一半"),),
        ),
      ],
    );
  }

  Widget sq() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: BtColor.color_868c95,
          child: Center(child: Text("100 正方形")),
        ),
        Container(
          width: 200,
          height: 200,
          color: BtColor.color_37414f,
          child: Center(child: Text("200 正方形")),
        ),
      ],
    );
  }

  Widget half() {
    return Row(
      children: <Widget>[
        Container(
          width: 180,
          height: 50,
          color: BtColor.color_6cb0d2,
          child: Center(child: Text("屏幕一半宽")),
        ),
        Container(
          width: 90,
          height: 50,
          color: BtColor.color_868c95,
          child: Center(child: Text("屏幕1/4宽")),
        ),
      ],
    );
  }
}
