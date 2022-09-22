import 'package:flutter/material.dart';
import 'package:grocery_homework/grocery/const/grocery_const.dart';

class ContextText extends StatelessWidget {
  const ContextText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: GroceryConst.colorGrey, fontSize: 18));
  }
}
