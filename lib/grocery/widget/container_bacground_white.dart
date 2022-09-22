import 'package:flutter/material.dart';
import 'package:grocery_homework/grocery/const/grocery_const.dart';

class ContainerBacgroundWhite extends StatelessWidget {
  const ContainerBacgroundWhite({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      width: MediaQuery.of(context).size.width / 8,
      decoration: BoxDecoration(
          borderRadius: GroceryConst.BorderRadiusCircular40,
          color: GroceryConst.colorWhite),
      child: widget,
    );
  }
}
