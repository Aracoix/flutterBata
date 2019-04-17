import 'package:bata_app_flutter_demo/utils/bt_color.dart';
import 'package:bata_app_flutter_demo/utils/bus_bean.dart';
import 'package:bata_app_flutter_demo/utils/event_bus.dart';
import 'package:flutter/material.dart';

class HomeBottomBt extends StatefulWidget {
  HomeBottomBtState state;
  @override
  HomeBottomBtState createState() {
    state = HomeBottomBtState();
    return state;
  }
}
class HomeBottomBtState extends State<HomeBottomBt> {

  var _currentIndex = 0;
  void onTabClick(int index){
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
        eventBus.emit(PageIndexChange,_currentIndex);
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BtColor.color_efeff4,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: (){onTabClick(0);},
            child: Container(
              width: 80,
              color: BtColor.color_efeff4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        _currentIndex == 0?'img/icon_home_active.png':"img/icon_home.png",
                      )),
                  Text("主页",style: TextStyle(color: _currentIndex==0?BtColor.darkGreen:Colors.grey),)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){onTabClick(1);},
            child: Container(
              width: 80,
              color: BtColor.color_efeff4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    child: Image.asset(_currentIndex == 1
                        ? 'img/icon_workspace_active.png'
                        : 'img/icon_workspace.png'),
                  ),
                  Text("工作台",style: TextStyle(color: _currentIndex==1?BtColor.darkGreen:Colors.grey),)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){onTabClick(2);},
            child: Container(
              width: 80,
              color: BtColor.color_efeff4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    child: Image.asset(_currentIndex == 2
                        ? 'img/icon_message_active.png'
                        : 'img/icon_message.png'),
                  ),
                  Text("消息",style: TextStyle(color: _currentIndex==2?BtColor.darkGreen:Colors.grey),)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){onTabClick(3);},
            child: Container(
              width: 80,
              color: BtColor.color_efeff4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    child: Image.asset(_currentIndex == 3
                        ? 'img/icon_setting_active.png'
                        : 'img/icon_setting.png'),
                  ),
                  Text("我的",style: TextStyle(color: _currentIndex==3?BtColor.darkGreen:Colors.grey),)
                ],
              ),
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
    );
  }
}
