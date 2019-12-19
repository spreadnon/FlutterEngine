import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui; // 调用window拿到route判断跳转哪个界面
import 'package:flutter/services.dart';
import 'HomePage.dart';

//
////void main() => runApp(MyApp());
//// 根据iOS端传来的route跳转不同界面
//void main() => runApp(_widgetForRoute(ui.window.defaultRouteName));
//
//Widget _widgetForRoute(String route) {
//  debugPrint(route);
//  switch (route) {
//    case 'myApp':
//      return new MyApp();
//    case 'home':
//      return new HomePage();
//    default:
//      return Center(
//        child: Text('Unknown route: $route', textDirection: TextDirection.ltr),
//      );
//  }
//}
//class HomePage extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
////  Widget build(BuildContext context) {
////    return MaterialApp(
////      title: 'Flutter Demo',
////      theme: ThemeData(
////        // This is the theme of your application.
////        //
////        // Try running your application with "flutter run". You'll see the
////        // application has a blue toolbar. Then, without quitting the app, try
////        // changing the primarySwatch below to Colors.green and then invoke
////        // "hot reload" (press "r" in the console where you ran "flutter run",
////        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
////        // counter didn't reset back to zero; the application is not restarted.
////        primarySwatch: Colors.blue,
////      ),
////      home: MyHomePage(title: '设置1'),
////    );
////  }
//
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: LYListViewContent(),
//    );
//  }
//}
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
////  Widget build(BuildContext context) {
////    return MaterialApp(
////      title: 'Flutter Demo',
////      theme: ThemeData(
////        // This is the theme of your application.
////        //
////        // Try running your application with "flutter run". You'll see the
////        // application has a blue toolbar. Then, without quitting the app, try
////        // changing the primarySwatch below to Colors.green and then invoke
////        // "hot reload" (press "r" in the console where you ran "flutter run",
////        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
////        // counter didn't reset back to zero; the application is not restarted.
////        primarySwatch: Colors.blue,
////      ),
////      home: MyHomePage(title: '设置1'),
////    );
////  }
//
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: LYListViewContent(),
//    );
//  }
//}
//
//class LYListViewContent extends StatelessWidget {
//  double fSize = 20.0;
//  void _look() {
//    print('flutter-点击我了！');
//  }
//  @override
//  Widget build(BuildContext context) {
//    //声明不同颜色的分割线
//    Widget redDivider = Divider(color: Colors.blueGrey);
//    Widget blueDivider = Divider(color: Colors.blueGrey);
//
//    return MaterialApp(
//        home: Scaffold(
//          body: Scrollbar(
//            child: Center(
//                child: ListView.separated(
//                  itemCount: 5,
//                  //判断奇偶数进行分割线颜色处理
//                  separatorBuilder: (BuildContext context, int index){
//                    return index % 2 == 0 ? redDivider:blueDivider;
//                  },
//                  itemBuilder: (BuildContext context, int index){
////                    if (index == 0){
////                      return ListTile(leading:new Icon(Icons.list),
////                        title: Text("我是列表$index",style: TextStyle(fontSize: fSize),),
////                        trailing: new Icon(Icons.keyboard_arrow_right),
////                      );
////                    }else{
////                      return ListTile(title: Text("我是列表$index",style: TextStyle(fontSize: fSize),),trailing: new Icon(Icons.keyboard_arrow_right),);
////                    }
//                    return FlatButton(
//                      onPressed: () => _look(),
////                      child: Card(
//                        child: Container(
//                          height: 50,
//                          alignment: Alignment.center,
//                          child: Text("我是列表$index",style: TextStyle(fontSize: fSize),textAlign: TextAlign.left,),
//                        ),
////                      ),
//                    );
//
//                  },
//                )
//            ),
//          ),
//        )
//    );
//  }
//
////  Widget build(BuildContext context) {
////    return ListView(
////      padding: EdgeInsets.only(top:90.0,left: 20,right: 20),
////      children: <Widget>[
////        Text('意见反馈',textAlign: TextAlign.left,
////          style: TextStyle(
////            decorationColor: const Color(0xffffffff), //线的颜色
////            decoration: TextDecoration
////                .none, //none无文字装饰   lineThrough删除线   overline文字上面显示线    underline文字下面显示线
////            decorationStyle: TextDecorationStyle
////                .solid, //文字装饰的风格  dashed,dotted虚线(简短间隔大小区分)  double三条线  solid两条线
////            wordSpacing: 0.0, //单词间隙(负值可以让单词更紧凑)
////            letterSpacing: 0.0, //字母间隙(负值可以让字母更紧凑)
////            fontStyle: FontStyle.normal, //文字样式，斜体和正常
////            fontSize: 20.0, //字体大小
////            fontWeight: FontWeight.w100, //字体粗细  粗体和正常
////            color: const Color(0xffffffff), //文字颜色
////          ),
////        ),
////        Text('账号安全'),
////        Text('用户协议'),
////        Text('隐私条款'),
////      ],
////    );
////  }
//}
//
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
////  int _counter = 0;
////
////  void _incrementCounter() {
////    setState(() {
////      // This call to setState tells the Flutter framework that something has
////      // changed in this State, which causes it to rerun the build method below
////      // so that the display can reflect the updated values. If we changed
////      // _counter without calling setState(), then the build method would not be
////      // called again, and so nothing would appear to happen.
////      _counter++;
////    });
////  }
////
////  @override
////  Widget build(BuildContext context) {
////    // This method is rerun every time setState is called, for instance as done
////    // by the _incrementCounter method above.
////    //
////    // The Flutter framework has been optimized to make rerunning build methods
////    // fast, so that you can just rebuild anything that needs updating rather
////    // than having to individually change instances of widgets.
////    return Scaffold(
////      appBar: AppBar(
////        // Here we take the value from the MyHomePage object that was created by
////        // the App.build method, and use it to set our appbar title.
////        title: Text(widget.title),
////      ),
////      body: Center(
////        // Center is a layout widget. It takes a single child and positions it
////        // in the middle of the parent.
////        child: Column(
////          // Column is also a layout widget. It takes a list of children and
////          // arranges them vertically. By default, it sizes itself to fit its
////          // children horizontally, and tries to be as tall as its parent.
////          //
////          // Invoke "debug painting" (press "p" in the console, choose the
////          // "Toggle Debug Paint" action from the Flutter Inspector in Android
////          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
////          // to see the wireframe for each widget.
////          //
////          // Column has various properties to control how it sizes itself and
////          // how it positions its children. Here we use mainAxisAlignment to
////          // center the children vertically; the main axis here is the vertical
////          // axis because Columns are vertical (the cross axis would be
////          // horizontal).
////          mainAxisAlignment: MainAxisAlignment.center,
////          children: <Widget>[
////            Text(
////              '个人账号设置',
////            ),
////            Text(
////              '$_counter',
////              style: Theme.of(context).textTheme.display1,
////            ),
////          ],
////        ),
////      ),
////      floatingActionButton: FloatingActionButton(
////        onPressed: _incrementCounter,
////        tooltip: 'Increment',
////        child: Icon(Icons.add),
////      ), // This trailing comma makes auto-formatting nicer for build methods.
////    );
////  }
//
//
//  // 创建一个给native的channel (类似iOS的通知）
//  static const methodChannel = const MethodChannel('com.pages.your/native_get');
//
//  void initState() {
//    super.initState();
//    _iOSPushToVC2();
//  }
//
//  _iOSPushToVC() async {
//    await methodChannel.invokeMethod('iOSFlutter', '参数');
//  }
//
//  _iOSPushToVC1() async {
//    Map<String, dynamic> map = {"code": "200", "data":[1,2,3]};
//    await methodChannel.invokeMethod('iOSFlutter1', map);
//  }
//
//  _iOSPushToVC2() async {
//    dynamic result;
//    try {
//      result = await methodChannel.invokeMethod('iOSFlutter2');
//    } on PlatformException {
//      result = "error";
//    }
//    if (result is String) {
//      print(result);
//      showModalBottomSheet(context: context, builder: (BuildContext context) {
//        return new Container(
//          child: new Center(
//            child: new Text(result, style: new TextStyle(color: Colors.brown), textAlign: TextAlign.center,),
//          ),
//          height: 40.0,
//        );
//      });
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new Center(
//        child: new Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new FlatButton(onPressed: () {
//              _iOSPushToVC();
//            }, child: new Text("跳转ios新界面，参数是字符串")),
//            new FlatButton(onPressed: () {
//              _iOSPushToVC1();
//            }, child: new Text("传参，参数是map，看log")),
//            new FlatButton(onPressed: () {
//              _iOSPushToVC2();
//            }, child: new Text("接收客户端相关内容")),
//          ],
//        ),
//      ),
//    );
//  }
//}





void main() => runApp(_widgetForRoute(ui.window.defaultRouteName));

Widget _widgetForRoute(String route) {
  switch (route) {
    case 'myApp':
      return new MyApp();
    case 'home':
      return new HomePage();
    default:
      return Center(
        child: Text('Unknown route: $route', textDirection: TextDirection.ltr),
      );
  }
}

class MyApp extends StatelessWidget {

  Widget _home(BuildContext context) {
    return new MyHomePage(title: 'Flutter Demo Home Page');
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        "/home":(BuildContext context) => new HomePage(),
      },
      home: _home(context),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // 创建一个给native的channel (类似iOS的通知）
  static const methodChannel = const MethodChannel('com.pages.your/native_get');

  void initState() {
    super.initState();
    //_iOSPushToVC2();
  }

  _iOSPushToVC() async {
    await methodChannel.invokeMethod('iOSFlutter', '参数');
  }

  _iOSPushToVC1() async {
    Map<String, dynamic> map = {"code": "200", "data":[1,2,3]};
    await methodChannel.invokeMethod('iOSFlutter1', map);
  }

  _iOSPushToVC2() async {
    dynamic result;
    try {
      result = await methodChannel.invokeMethod('iOSFlutter2');
    } on PlatformException {
      result = "error";
    }
    if (result is String) {
      print(result);
      showModalBottomSheet(context: context, builder: (BuildContext context) {
        return new Container(
          child: new Center(
            child: new Text(result, style: new TextStyle(color: Colors.brown), textAlign: TextAlign.center,),
          ),
          height: 40.0,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlatButton(onPressed: () {
              _iOSPushToVC();
            }, child: new Text("跳转ios新界面，参数是字符串")),
            new FlatButton(onPressed: () {
              _iOSPushToVC1();
            }, child: new Text("传参，参数是map，看log")),
            new FlatButton(onPressed: () {
              _iOSPushToVC2();
            }, child: new Text("接收客户端相关内容")),
          ],
        ),
      ),
    );
  }
}
