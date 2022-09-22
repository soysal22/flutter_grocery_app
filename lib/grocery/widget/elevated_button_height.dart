import 'package:flutter/material.dart';

import 'package:grocery_homework/grocery/const/grocery_const.dart';

class ElevatedButtonHeight extends StatelessWidget {
  const ElevatedButtonHeight({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final double _height = 15;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / _height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            // backgroundColor: GroceryConst.colorGreen,
            shape: RoundedRectangleBorder(
                borderRadius: GroceryConst.BorderRadiusCircular40)),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: GroceryConst.colorWhite,
                  fontSize: 20,
                ),
          ),
        ),
      ),
    );
  }
}
