import 'package:flutter/material.dart';

void main() {
//  아래의 myapp을 실행하겠다는 뜻입니다
  runApp(MyApp());
}
//MyApp이 statelessWidget을 상속받고있습니다
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    materialapp을 사용합니다.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      scafforld를 써서 material 디자인을합니다
      home: HelloWorld('hello world')
    );
  }
}
class HelloWorld extends StatefulWidget {
  final String title;
//여기서는final을 붙여야합니다 따로 값이 바뀌는건 여기로오면안되죠.

  HelloWorld(this.title);
  //생성자를 만들어줍니다

  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Text(widget.title,style: TextStyle(fontSize: 30),));

  }
}

