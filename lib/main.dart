import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'my_circular_percentage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isRightIcon =false;
  bool isLeftIcon =false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(child: PercentIndigator2()),
        ),
    );
  }

  Widget percentIndicator1(){
    return Center(
      child: MyCircularPercentIndicator(
        radius: 90,
        backgroundColor: Colors.white,
        addAutomaticKeepAlive: true,
        animation: true,
        animationDuration: 30,
        backgroundWidth: 10,
        circularStrokeCap: CircularStrokeCap.round,
        percent: 0.97,
        lineWidth: 10,
        //progressColor: Colors.blue,
        widgetIndicatorLeftSide: Icon(Icons.delete,color: Colors.lime,),
        //fillColor: Colors.red,
        maskFilter: MaskFilter.blur(BlurStyle.inner, 8),
        rotateLinearGradient: true,
        linearGradient: LinearGradient(
            colors: [Colors.lightBlueAccent,Colors.lightBlue,Colors.blueAccent,Colors.blueGrey,Colors.red]

        ),

      ),
    );
  }

  Widget PercentIndigator2(){
    return Container(
      //color: Colors.black,
      child: MyCircularPercentIndicator(
        radius: 100,
        backgroundColor: Colors.teal.withOpacity(0.2),
        circularStrokeCap: CircularStrokeCap.round,
        animation: true,
        animationDuration: 30,
        backgroundWidth: 10,
        percent: 0.4,
        lineWidth: 20,
        progressColor: Colors.teal,
        widgetIndicatorLeftSide: InkWell(
          onTap: (){
            isRightIcon=!isRightIcon;
            setState(() {

            });
          },
            child: InkWell(
              onTap: (){
                print("hello from left");
              },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                    child: Image.network("https://picsum.photos/200")))),//Icon(Icons.delete,color: isRightIcon?Colors.purple:Colors.deepOrangeAccent)),
        widgetIndicatorRightSide: InkWell(
          onTap: (){
            isLeftIcon=!isLeftIcon;
            setState(() {
            });
          },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network("https://picsum.photos/id/3/200"))),
        rotateLinearGradient: true,
      ),
    );
  }


}

