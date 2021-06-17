import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

// github test
// 테스트 중...
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event3 UI"),
        centerTitle: true,
      ),
      body: Container( //회색 컨테이
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
          width: MediaQuery.of(context).size.width,
          height: 500,
          color: Colors.grey.shade300,
        child: Row(
          children: [
            Container( // 파란컨테이너
              //color: Colors.green,
              alignment: Alignment.topLeft,
              width: 230,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),

              child: Column(
                children: [
                  Container( // 아이콘컨테이너
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://images.unsplash.com/photo-1617331008613-9479b434b1e6?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                      ),
                    ),
                    //color: Colors.purple,
                  height: 400,
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      icon: Icon(Icons.favorite),onPressed: (){} ),
                ),
                  SizedBox(height: 53.0,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height,
                    margin: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                    //color: Colors.indigo,
                    child: Text("Application Title",
                      style: TextStyle(
                        fontSize: 23 ,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    ),
                ),
              ]
            ),
          ),
            Container(
              width: 150,
              color: Colors.greenAccent,
              padding: EdgeInsets.only(top: 20.0, left: 5.0,),
              child: Column(
                children: [
                  Container(
                    child: Text("SubTitle",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.pink,
                  ),
                  Container(),
                ],
              ),
            ),
          ]
        )
      )
    );
  }
}

