import 'package:flutter/material.dart';
import 'package:grocery_homework/grocery/const/grocery_const.dart';
import 'package:grocery_homework/grocery/view/grocery_home.dart';
import 'package:grocery_homework/grocery/widget/context_text.dart';
import 'package:grocery_homework/grocery/widget/elevated_button_height.dart';

class GroceryInfo extends StatelessWidget {
  const GroceryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          color: GroceryConst.colorWhite,
          child: Padding(
            padding: GroceryConst.edgeInsetsAll5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: GroceryConst.colorGreenThree,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40, left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Expanded(flex: 2, child: _imageAsset()),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _textTitle(context),
                            ContextText(text: GroceryConst.info_florem_text),
                          ],
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButtonHeight(
                          text: GroceryConst.info_elevatedButton_text,
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => GroceryHome(),
                            ));
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
      GroceryConst.info_find_bold_text,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: GroceryConst.colorBlack, fontSize: 32),
    );
  }

  Image _imageAsset() {
    return Image.asset(
      GroceryConst.image_info_tomato,
      fit: BoxFit.contain,
    );
  }
}
