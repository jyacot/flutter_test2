import "package:flutter/material.dart";
import "views/home.dart";


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Mi Apkacita",
        home: Home(),
        theme: ThemeData(
          primaryColor: Colors.white
        ),

    );
  }

}