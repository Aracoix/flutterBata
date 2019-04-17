import 'package:bata_app_flutter_demo/utils/bt_color.dart';
import 'package:flutter/material.dart';

class WorkBaseBean {
  var name = "";
  var icon = "";
  var goTo = "";

  WorkBaseBean({@required this.name, @required this.icon, this.goTo});
}

class WorkBean {
  var beans = new List<WorkBaseBean>();
  var name = "";

  WorkBean(this.name, this.beans);
}

class WorkItemView extends StatefulWidget {
  List<WorkBean> list;
  var isTabClick = false;
  WorkItemView({
    @required this.list,
  });

  @override
  _WorkItemState createState(){
    print("_WorkItemState has change");
    return _WorkItemState(beans: list);
  }
}

class _WorkItemState extends State<WorkItemView> {
  List<WorkBean> beans;
  _WorkItemState({@required this.beans});

  @override
  Widget build(BuildContext context) {
    print("is Tab click = $widget.isTabClick");
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: beans.length,
        itemBuilder: (context, index) {
//          print(index);
          var buildItems = buildItem(beans[index]);
      return buildItems;
    });
  }

  Widget buildItem(WorkBean bean) {
    return Column(
      children: <Widget>[
        Row(
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
                Text(bean.name)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: GestureDetector(
                child: Text(
                  bean.beans.length > 3 ? (widget.isTabClick ? "收起更多" : "展示更多") : "",
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
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: GridView.builder(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.isTabClick
                  ? ((bean.beans.length ) ~/ 4 == 0
                      ? bean.beans.length
                      : ((bean.beans.length ) ~/ 4 + 1) * 4)
                  : 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
//                  maxCrossAxisExtent: 100,
                  childAspectRatio: 1/1),
              itemBuilder: (context, index) {
                if (index < bean.beans.length) {
                  return Column(
                    children: <Widget>[
                      Image.asset(
                        bean.beans[index].icon,
                        width: 50,
                        height: 50,
                      ),
                      Text(bean.beans[index].name)
                    ],
                  );
                } else {
                  return Column(
                    children: <Widget>[
                      Image.asset(
                        "",
                        width: 50,
                        height: 50,
                      ),
                      Text("")
                    ],
                  );
                }
              }),
        ),
      ],
    );
  }
}
