import 'package:bata_app_flutter_demo/utils/bt_color.dart';
import 'package:flutter/material.dart';

class HomeMinePage extends StatefulWidget {
  @override
  _HomeMinePageState createState() => _HomeMinePageState();
}

class _HomeMinePageState extends State<HomeMinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BtColor.color_efeff4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[buildTopHeader(), buildList()],
          ),
          buildLoginOut()
        ],
      ),
    );
  }
  // 重制与更新
  Column buildList() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.lock_outline,
                  size: 25,
                ),
              ),
              Text("重置密码"),
              Expanded(
                child: Container(),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 1,
            color: BtColor.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.cloud_upload,
                  size: 25,
                ),
              ),
              Text("应用更新"),
              Expanded(
                child: Container(),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ],
    );
  }
    // 退出登录
  Padding buildLoginOut() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 60),
      child: Container(
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(color: BtColor.darkGreen, width: 2),
              borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Text(
            "退出",
            style: TextStyle(color: BtColor.darkGreen, fontSize: 18),
          ))),
    );
  }

  // 我来组成头部
  Stack buildTopHeader() {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 150,
              color: BtColor.color_defult,
            ),
            Container(
              height: 100,
              color: BtColor.color_efeff4,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 80),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
                color: BtColor.white,
                boxShadow: [
                  BoxShadow(
                      color: BtColor.color_666666,
                      offset: Offset(0, 0.5),
                      blurRadius: 8),
                ],
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 27, top: 15, bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "李新伦",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "18537651235",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "lixinlun@ihomefnt.com",
                          style: TextStyle(
                              fontSize: 15, color: BtColor.color_989898),
                        ),
                      ],
                    ),
                  ),
                  flex: 733,
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: BtColor.darkGreen),
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Center(
                          child: Text(
                        "新伦",
                        style: TextStyle(
                            color: BtColor.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ))
                    ],
                  ),
                  flex: 269,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
