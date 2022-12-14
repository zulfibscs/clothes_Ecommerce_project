import 'package:clothes_app_starter/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor:Color(0xfffafafa),
        primaryColor: Color(0xffffbd00),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xffffebc7))
      ),
      home: HomePage(),
    );
  }
}

