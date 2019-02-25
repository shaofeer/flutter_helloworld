import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: new AppBar(
//        title: new Text("title"),
//      ),
//      body: new Table(
//        children: [
//          new TableRow(
//            decoration: new BoxDecoration(
//                border: new Border(
//              bottom: BorderSide(color: Colors.grey),
//            )),
//            children: [
//              new Text("one Row"),
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//}

// 简单的自定义Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("自定义Widget"),
      ),
      body: new Column(
        children: <Widget>[
          new MyItemWidget(Icons.chat, "消息记录"),
          new MyItemWidget(Icons.stars, "我的收藏"),
          new MyItemWidget(Icons.lock, "我的账户"),
          new MyItemWidget(Icons.send, "意见反馈"),
          new MyItemWidget(Icons.settings, "系统设置"),
        ],
      ),
    );
  }
}

//自定义 Widget

class MyItemWidget extends StatelessWidget {
  final String _msg;
  final IconData _iconData;

  MyItemWidget(this._iconData, this._msg);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      child: new Row(
        children: <Widget>[
          new Icon(_iconData),
          new Expanded(
              child: new Text(
                _msg,
                textAlign: TextAlign.right,
              ))
        ],
      ),
      padding: EdgeInsets.all(20),
    );
  }
}

//ROW COLUMN 练习
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("layout"),
//      ),
//      body: new Column(
//        children: <Widget>[
//          new Container(
//            decoration: BoxDecoration(
//                border: Border(bottom: BorderSide(color: Colors.grey))),
//            child: new Row(
//              children: <Widget>[
//                new Icon(
//                  Icons.chat,
//                  size: 20,
//                ),
//                new Expanded(
//                    child: new Text(
//                  "消息记录",
//                  textAlign: TextAlign.right,
//                  style: TextStyle(fontSize: 18),
//                ))
//              ],
//            ),
//            padding: EdgeInsets.all(10),
//          ),
//          new Container(
//            decoration: BoxDecoration(
//                border: Border(bottom: BorderSide(color: Colors.grey))),
//            child: new Row(
//              children: <Widget>[
//                new Icon(
//                  Icons.stars,
//                  size: 20,
//                ),
//                new Expanded(
//                    child: new Text(
//                  "我的收藏",
//                  textAlign: TextAlign.right,
//                  style: TextStyle(fontSize: 18),
//                ))
//              ],
//            ),
//            padding: EdgeInsets.all(10),
//          ),
//          new Container(
//            decoration: BoxDecoration(
//                border: Border(bottom: BorderSide(color: Colors.grey))),
//            child: new Row(
//              children: <Widget>[
//                new Icon(
//                  Icons.lock,
//                  size: 20,
//                ),
//                new Expanded(
//                    child: new Text(
//                  "我的账户",
//                  textAlign: TextAlign.right,
//                  style: TextStyle(fontSize: 18),
//                ))
//              ],
//            ),
//            padding: EdgeInsets.all(10),
//          ),
//          new Container(
//            decoration: BoxDecoration(
//                border: Border(bottom: BorderSide(color: Colors.grey))),
//            child: new Row(
//              children: <Widget>[
//                new Icon(
//                  Icons.send,
//                  size: 20,
//                ),
//                new Expanded(
//                    child: new Text(
//                  "意见反馈",
//                  textAlign: TextAlign.right,
//                  style: TextStyle(fontSize: 18),
//                ))
//              ],
//            ),
//            padding: EdgeInsets.all(10),
//          ),
//          new Container(
//            decoration: BoxDecoration(
//                border: Border(bottom: BorderSide(color: Colors.grey))),
//            child: new Row(
//              children: <Widget>[
//                new Icon(
//                  Icons.settings,
//                  size: 20,
//                ),
//                new Expanded(
//                    child: new Text(
//                  "系统设置",
//                  textAlign: TextAlign.right,
//                  style: TextStyle(fontSize: 18),
//                ))
//              ],
//            ),
//            padding: EdgeInsets.all(10),
//          ),
//        ],
//      ),
//    );
//  }
//}

//ROW  COLUMN
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(title: new Text("ROW")),
//      body: new Column(
//        children: <Widget>[
//          new Expanded(child: new Text("ROWROW ROW ROW flutter!!!!")),
//          new Expanded(
//            child: new Text("upuptop  wintp.top  wintptwdsjfkasdjfklsdjfk"),
//            flex: 2,
//          ),
//          new Expanded(
//            child: new Text("我是一只小小鸟我是一只小小鸟我是一只小小鸟我是一只小小鸟我是一只小小鸟"),
//            flex: 3,
//          )
//        ],
//      ),
//    );
//  }
//}

//容器的demo学习
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("容器"),
//      ),
//      body: new Center(
//        child: new Container(
//          color: Colors.blue,
//          width: 400,
//          height: 400,
//          margin: EdgeInsets.only(left: 10, right: 10),
//          alignment: Alignment.bottomRight,
//          child: new Container(
//            color: Colors.lightBlueAccent,
//            width: 200,
//            height: 200,
//            alignment: Alignment.topLeft,
//            padding: EdgeInsets.all(20),
//            child: new Icon(
//              Icons.android,
//              size: 50,
//              color: Colors.red,
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}

//容器的学习
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("容器的学习"),
//      ),
//      body: new Container(
//        color: Colors.red,
////        decoration: BoxDecoration(
////            image: DecorationImage(
////                image: new NetworkImage(
////                    "http://c.hiphotos.baidu.com/image/pic/item/34fae6cd7b899e518d7259df4fa7d933c9950d78.jpg"))),
//        width: 200,
//        constraints: BoxConstraints(maxHeight: 400, minHeight: 400),
//        transform: Matrix4.skewX(-0.2),
//        height: 300,
//        child: new Text(
//          "你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好",
////          textAlign: TextAlign.center,
//        ),
//        padding: EdgeInsets.all(20),
//        alignment: Alignment.center,
//        margin: EdgeInsets.fromLTRB(100, 20, 100, 0),
//      ),
//    );
//  }
//}

//ICON的学习使用
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Hello"),
//      ),
//      drawer: new Drawer(
//        child: new Center(),
//      ),
//      body: new Center(
//
//
////        //自定义ICON类进行使用
////        child: new Icon(
////          UpuptopTTf.heart_icon,
////          color: Colors.red,
////          size: 200,
////        ),
//
//////        iconfont 单个引用
////        child: new Icon(
////          new IconData(0xe7df, fontFamily: "upuptopTTf"),
////          color: Colors.red,
////          size: 200,
////        ),
//
//////系统自带的图标
////        child: new Icon(
////          Icons.android,
////          color: Colors.blue,
////          size: 220,
////        ),
//          ),
//    );
//  }
//}

//自定义 Icon
//class UpuptopTTf {
//  static const IconData heart_icon = IconData(0xe7df, fontFamily: "upuptopTTf");
//
//  static const IconData gift_fill_icon =
//      IconData(0xe866, fontFamily: "upuptopTTf");
//
//  static const IconData like_icon = IconData(0xe869, fontFamily: "upuptopTTf");
//
//  static const IconData unlike_icon =
//      IconData(0xe86a, fontFamily: "upuptopTTf");
//}

//Text 组件的使用学习
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(
//          "helloword",
//          textDirection: TextDirection.ltr,
//          textAlign: TextAlign.right,
//          style: new TextStyle(
//            color: Colors.red,
//            fontSize: 16,
//          ),
//        ),
//      ),
//      body: new Text(
//          "夜晚走在喧闹的小街上，反而心能更加的平静，"
//          "或许这就是物极必反的缘故吧，"
//          "总喜欢在最吵闹的地方去寻找那一份属于自己的宁静，"
//          "可以不思考所有的困扰，也可以闭着眼睛静听来自远方的人间天堂的呼唤，"
//          "然后在忽明忽暗的灯光下丢弃心中的包袱，和一脸的苦闷，"
//          "再走到起点时，又翻去了一页，也尘封了以往。",
//          style: new TextStyle(
//              decoration: TextDecoration.underline,
//              fontSize: 18,
//              fontWeight: FontWeight.bold,
//              letterSpacing: 9,
//              fontStyle: FontStyle.italic,
//              decorationColor: Colors.red)),
////      new Image.network(
////          "http://img.soogif.com/e2d43a22-cbba-47ab-b1cc-e7ea0810aab3.gif"),
////      new Image.network(
////          "http://pic1.win4000.com/wallpaper/2017-10-25/59f083092ed4f.jpg"),
////      new Image.asset(
////        "assets/images/upuptop.png",
////        width: 200,
////        height: 106,
////        fit: BoxFit.fitWidth,
////        scale: 22,
////      ),
//      drawer: new Drawer(),
//      endDrawer: new Drawer(
//        child: new Center(
//          child: new Text("HelloWorld"),
//        ),
//      ),
//      backgroundColor: Colors.white,
//      floatingActionButton: new FloatingActionButton(
//        backgroundColor: Colors.red,
//        child: new Center(
//          child: new Text("click"),
//        ),
//      ),
//    );
//  }
//}
