import 'package:bata_app_flutter_demo/home/home_bottom_bt.dart';
import 'package:bata_app_flutter_demo/home/home_chat_page.dart';
import 'package:bata_app_flutter_demo/home/home_main_page.dart';
import 'package:bata_app_flutter_demo/home/home_mine_page.dart';
import 'package:bata_app_flutter_demo/home/home_work_page.dart';
import 'package:bata_app_flutter_demo/utils/bus_bean.dart';
import 'package:bata_app_flutter_demo/utils/event_bus.dart';
import 'package:flutter/material.dart';


class MainPageStack extends StatefulWidget {
  @override
  _MainPageStackState createState() => _MainPageStackState();
}

class _MainPageStackState extends State<MainPageStack> {
  var _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    eventBus.on(PageIndexChange, (arg){
        setState(() {
          _currentIndex = arg;
        });
    });
  }
  @override
  void dispose() {
    eventBus.off(PageIndexChange);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      children: <Widget>[
        HomeMainPage(),
        HomeWorkPage(),
        HomeChatPage(),
        HomeMinePage()
      ],
      index: _currentIndex,
    );
  }
}
