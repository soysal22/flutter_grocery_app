import 'package:flutter/material.dart';
import 'package:grocery_homework/grocery/const/grocery_const.dart';
import 'package:grocery_homework/grocery/view/grocery_detail.dart';
import 'package:grocery_homework/grocery/view/grocery_home.dart';

import 'package:grocery_homework/grocery/view/grocery_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: GroceryInfo(),
    );
  }
}
