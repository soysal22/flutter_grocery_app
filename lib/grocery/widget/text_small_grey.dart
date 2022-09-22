import 'package:flutter/material.dart';
import 'package:grocery_homework/grocery/const/grocery_const.dart';

class TextSmallGrey extends StatelessWidget {
  const TextSmallGrey({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: GroceryConst.colorGrey,
            fontSize: 15,
            //fontWeight: FontWeight.bold
          ),
    );
  }
}
