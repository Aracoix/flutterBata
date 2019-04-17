import 'package:bata_app_flutter_demo/utils/bt_color.dart';
import 'package:flutter/material.dart';

class HomeMainPage extends StatefulWidget {
  var isTabClick = false;

  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    var list = [
      [
        "超期10天",
        "39",
        "单",
      ],
      [
        "预计待交付量",
        "22",
        "当月",
      ],
      [
        "客户满意度",
        "97.3",
        "分",
      ],
      [
        "本月交付时常",
        "232",
        "天",
      ],
      [
        "平均交付时长",
        "141",
        "天",
      ],
      [
        "小艾转单率",
        "100",
        "%本周",
      ],
      [
        "未选风格比率",
        "55",
        "%",
      ],
      [
        "投诉完成率",
        "50",
        "%当月",
      ],
      [
        "事前预警数",
        "5",
        "单",
      ],
      [
        "未完成工单数",
        "109",
        "单",
      ],
      [
        "今日未接电话",
        "0",
        "个",
      ],
      [
        "客服在线数",
        "1",
        "电话",
      ],
    ];
    var bussList = [
      ["销售日报", "", [
          BusinessBean("新增订单-订单收款金额", ""),
          BusinessBean("历史订单-订单收款金额", ""),
          BusinessBean("部分退款金额-退款金额", ""),
          BusinessBean("取消订单-退款金额", ""),
          BusinessBean("回款总额", ""),]],
      ["销售日报", "", [
        BusinessBean("新增订单-订单收款金额", ""),
        BusinessBean("历史订单-订单收款金额", ""),
        BusinessBean("部分退款金额-退款金额", ""),
        BusinessBean("取消订单-退款金额", ""),
        BusinessBean("回款总额", ""),]],
      ["销售日报", "2018-10-12", [
        BusinessBean("新增订单-订单收款金额", ""),
        BusinessBean("历史订单-订单收款金额", ""),
        BusinessBean("部分退款金额-退款金额", ""),
        BusinessBean("取消订单-退款金额", ""),
        BusinessBean("回款总额", ""),]],
      ["销售日报", "", [
        BusinessBean("新增订单-订单收款金额", ""),
        BusinessBean("历史订单-订单收款金额", ""),
        BusinessBean("部分退款金额-退款金额", ""),
        BusinessBean("取消订单-退款金额", ""),
        BusinessBean("回款总额", ""),]],
      ["销售日报", "", [
        BusinessBean("新增订单-订单收款金额", "11111111"),
        BusinessBean("历史订单-订单收款金额", "11111111"),
        BusinessBean("部分退款金额-退款金额", "11111111"),
        BusinessBean("取消订单-退款金额", "1111111111111111"),
        BusinessBean("回款总额", "11111"),]],
    ];
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          height: 100,
          child: Column(
            children: <Widget>[
              buildSearchView(),
              buildAlertBarView(),
            ],
          ),
          color: BtColor.color_defult,
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: buildItemTitle(),
              ),
              buildTopGridView(list),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: buildBusinessTitle(),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                    child: getBusinessItem(bussList[index][0], bussList[index][1],
                        bussList[index][2]),
                  );
                },
                padding: EdgeInsets.all(0),
                itemCount: 5,
              )
            ],
            padding: EdgeInsets.all(0),
          ),
        )
      ],
    ));
  }

  Widget getBusinessItem(String title, String time, List<BusinessBean> item) {
    return new Container(
      decoration: BoxDecoration(
        color: BtColor.white,
        boxShadow: [BoxShadow(color: Color(0x33000000),offset: Offset(0, 2))],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Container(margin: EdgeInsets.all(2),
                    child: Text(title,style: TextStyle(color: BtColor.white),)),
//                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: BtColor.darkGreen,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("查看更多",style: TextStyle(color: BtColor.grey),),
              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.all((time!=null && time!="")?10.0:0.0),
            child: Text(time,style: TextStyle(fontSize: 20),),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: item.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      color: BtColor.grey,
                      height: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item[index].title),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Text(
                          item[index].num,
                          style: TextStyle(
                              fontSize: item[index].num.length > 8 ? 10 : 16),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
            padding: EdgeInsets.all(0),
          )
        ],
      ),
    );
  }

  Padding buildTopGridView(List<List<String>> list) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 20),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                        crossAxisSpacing: 20,
//                        mainAxisSpacing: 20,
            crossAxisCount: 3,
            childAspectRatio: 1),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: getDateFocusedItem(
                list[index][0], list[index][1], list[index][2]),
          );
        },
        itemCount: widget.isTabClick ? 12 : 3,
      ),
    );
  }

  Row buildBusinessTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 5,
              margin: EdgeInsets.all(5),
              height: 10,
              decoration: BoxDecoration(
                  color: BtColor.darkGreen,
                  borderRadius: BorderRadius.circular(3)),
            ),
            Text("业务概要")
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            "",
          ),
        )
      ],
    );
  }

  Row buildItemTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 5,
              margin: EdgeInsets.all(5),
              height: 10,
              decoration: BoxDecoration(
                  color: BtColor.darkGreen,
                  borderRadius: BorderRadius.circular(3)),
            ),
            Text("关注数据")
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: GestureDetector(
            child: Text(
              widget.isTabClick ? "收起更多" : "展示更多",
            ),
            onTap: () {
              setState(() {
                widget.isTabClick = !widget.isTabClick;
                print("tab click tab = $widget.isTabClick");
              });
            },
          ),
        )
      ],
    );
  }

  Widget getDateFocusedItem(String title, String num, String unit) {
    return Container(
      decoration: BoxDecoration(
          color: BtColor.white,
          boxShadow: [
            BoxShadow(
                color: Color(0x33000000), offset: Offset(0, 2), blurRadius: 5)
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                num,
                style: TextStyle(fontSize: 22, color: BtColor.color_e27e61),
              ),
              Text(
                unit,
                style: TextStyle(color: BtColor.color_e27e61),
              )
            ],
          )
        ],
      ),
    );
  }

  Expanded buildAlertBarView() {
    return Expanded(
      flex: 1,
      child: Container(
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.assignment,
                  color: BtColor.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(
                    "待办",
                    style: TextStyle(color: BtColor.color_bdbfc2),
                  ),
                ),
                Container(
                  child: Text(
                    "0",
                    style: TextStyle(color: BtColor.white),
                  ),
                  decoration: BoxDecoration(
                      color: BtColor.color_e27e61,
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.only(left: 3, right: 3),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.report_problem,
                  color: BtColor.white,
                ),
                Text(
                  "预警",
                  style: TextStyle(color: BtColor.color_bdbfc2),
                ),
                Container(
                  child: Text(
                    "50",
                    style: TextStyle(color: BtColor.white),
                  ),
                  decoration: BoxDecoration(
                      color: BtColor.color_e27e61,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.only(left: 3, right: 3),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.notifications_none,
                  color: BtColor.white,
                ),
                Text(
                  "通知",
                  style: TextStyle(color: BtColor.color_bdbfc2),
                ),
              ],
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }

  Expanded buildSearchView() {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
        child: Container(
          child: Container(
            color: BtColor.color_37414f,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Image.asset(
                    "img/ic_search.png",
                    width: 20,
                    height: 20,
                    color: BtColor.color_868c95,
                  ),
                ),
                Text(
                  "搜索",
                  style: TextStyle(color: BtColor.color_868c95),
                )
              ],
            ),
          ),
//
          decoration: BoxDecoration(
              border: Border.all(color: BtColor.color_37414f),
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}

class BusinessBean {
  String title;
  String num;

  BusinessBean(this.title, this.num);
}
