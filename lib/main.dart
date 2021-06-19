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
              width: 258,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 5.0, bottom: 10.0),
              child: Column(
                children: [
                  Container(
                    // 아이콘컨테이너
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
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //color: Colors.orange,
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text("SubTitle",
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      //color: Colors.lime
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                      width: 100,
                      height: 150,
                      child: SingleChildScrollView(
                          child: Text("descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription")
                    )
                  ),
                  SizedBox(height: 30,),
                    Container(
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://images.unsplash.com/photo-1561238160-3fd50893667f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Zmxvd2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                                    fit: BoxFit.fill
                                )
                              ),
                            ),
                            Container(
                              height: 30.0,
                              color: Colors.white,
                              width: 100,
                              child: Text('이미지1',textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}

