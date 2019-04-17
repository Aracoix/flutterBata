import 'package:bata_app_flutter_demo/utils/bt_color.dart';
import 'package:bata_app_flutter_demo/view/work_item_view.dart';
import 'package:flutter/material.dart';

class HomeWorkPage extends StatefulWidget {
  @override
  _HomeWorkPageState createState() => _HomeWorkPageState();
}

class _HomeWorkPageState extends State<HomeWorkPage> {
  var currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pageController = new PageController(initialPage: 1);
    var item = List<WorkBean>();
    item.add(WorkBean("常用功能", [
      WorkBaseBean(icon: "img/message_service.png",name: "订单管理"),
      WorkBaseBean(icon: "img/message_service.png",name: "施工管理"),
      WorkBaseBean(icon: "img/message_service.png",name: "经纪人管理"),
      WorkBaseBean(icon: "img/message_service.png",name: "交付"),
      WorkBaseBean(icon: "img/message_service.png",name: "工地质检"),
      WorkBaseBean(icon: "img/message_service.png",name: "安装验收"),
    ]));
    item.add(WorkBean("统计分析", [
      WorkBaseBean(icon: "img/message_service.png",name: "报表"),
    ]));
    item.add(WorkBean("业务看板", [
      WorkBaseBean(icon: "img/message_service.png",name: "销售看板"),
      WorkBaseBean(icon: "img/message_service.png",name: "交付看板"),
    ]));
    item.add(WorkBean("客服业务", [
      WorkBaseBean(icon: "img/message_service.png",name: "工单处理"),
      WorkBaseBean(icon: "img/message_service.png",name: "绑定小艾"),
      WorkBaseBean(icon: "img/message_service.png",name: "工单分配"),
    ]));
    return Container(child: Column(
      children: <Widget>[
        Container(height: 51,
          child: Center(child: Text("工作台",style: TextStyle(color: BtColor.white,fontSize: 18),)),
          color: BtColor.color_defult,
        ),
        Expanded(
          child: ListView(
            primary:true,
//            physics: new ClampingScrollPhysics(),
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            children: <Widget>[
              buildBanner(pageController),
              WorkItemView(list: item,)
            ],
          ),
        ),
      ],
    ));
  }

  AspectRatio buildBanner(PageController pageController) {
    return AspectRatio(
              aspectRatio: 1125/420,
              child: Container(
                child: PageView.builder(itemBuilder: (context,index){
                  if (index == 0) {
                    return Image.asset("img/banner1.jpg");
                  } else{
                    return Image.asset("img/banner2.jpg");
                  }
                },itemCount: 2,
                controller: pageController,
                ),
              ),
            );
  }
}
