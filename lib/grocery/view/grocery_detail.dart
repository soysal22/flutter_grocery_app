import 'package:flutter/material.dart';
import 'package:grocery_homework/grocery/const/grocery_const.dart';
import 'package:grocery_homework/grocery/view/grocery_home.dart';
import 'package:grocery_homework/grocery/widget/container_bacground_white.dart';
import 'package:grocery_homework/grocery/widget/elevated_button_height.dart';
import 'package:grocery_homework/grocery/widget/text_large_bold.dart';
import 'package:grocery_homework/grocery/widget/text_small_bold.dart';
import 'package:grocery_homework/grocery/widget/text_small_grey.dart';

class GroceryDetail extends StatefulWidget {
  const GroceryDetail({super.key});

  @override
  State<GroceryDetail> createState() => _GroceryDetailState();
}

class _GroceryDetailState extends State<GroceryDetail> {
  late double _kg = 0;
  final double _decorationThickness = 2;
  final double _textBroccoliSize = 25;
  final double tosp = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: GroceryConst.colorBlue,
      child: Padding(
        padding: GroceryConst.paddingAll5,
        child: Scaffold(
          backgroundColor: GroceryConst.colorGreyTwo,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Stack(),
                      GroceryConst.sizedBoxHeight20,
                      TextLargeBold(
                          text: GroceryConst.text_Broccoli,
                          size: _textBroccoliSize),
                      GroceryConst.sizedBoxHeight15,
                      _rowDolarTextIcon(),
                      GroceryConst.sizedBoxHeight20,
                      TextSmallBold(text: GroceryConst.detail_text_description),
                      GroceryConst.sizedBoxHeight15,
                      TextSmallGrey(text: GroceryConst.detail_text_lorem_grey),
                      GroceryConst.sizedBoxHeight20,
                      TextLargeBold(
                          text: GroceryConst.detail_text_related_item,
                          size: 20),
                      GroceryConst.sizedBoxHeight15,
                      _rowColumnRelatedItems(),
                    ],
                  ),
                  GroceryConst.sizedBoxHeight20,
                  ElevatedButtonHeight(
                      text: GroceryConst.detail_text_elevated_button,
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _rowColumnRelatedItems() {
    return Row(
      children: [
        columnMiniContainerText(
            image: GroceryConst.image_tomato, text: GroceryConst.text_tomatoes),
        GroceryConst.sizedBoxWidth5,
        columnMiniContainerText(
            image: GroceryConst.image_potato, text: GroceryConst.text_potato),
        GroceryConst.sizedBoxWidth5,
        columnMiniContainerText(
            image: GroceryConst.image_chinese_cabbage,
            text: GroceryConst.detail_text_cabbage),
        GroceryConst.sizedBoxWidth5,
        columnMiniContainerText(
            image: GroceryConst.image_meat,
            text: GroceryConst.detail_text_meat),
        GroceryConst.sizedBoxWidth5,
        columnMiniContainerText(
            image: GroceryConst.image_papaya,
            text: GroceryConst.detail_text_papaya),
        GroceryConst.sizedBoxWidth5,
        columnMiniContainerText(
            image: GroceryConst.image_bananas,
            text: GroceryConst.detail_text_bananas),
      ],
    );
  }

  Row _rowDolarTextIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_rowTexts(), _rowConatinerkgIcon],
    );
  }

  Row _rowTexts() {
    return Row(
      children: [
        TextSmallBold(text: GroceryConst.text_price),
        GroceryConst.sizedBoxWidth5,
        Text(
          GroceryConst.text_price_line,
          style: TextStyle(
            color: GroceryConst.colorGrey,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: _decorationThickness,
          ),
        ),
      ],
    );
  }

  Row get _rowConatinerkgIcon {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: GroceryConst.BorderRadiusCircular40,
                color: _kg >= 1
                    ? GroceryConst.colorGreen
                    : GroceryConst.colorGrey),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_kg >= 1) {
                    _kg--;
                  }
                });
              },
              child: Icon(
                Icons.remove,
                color: GroceryConst.colorWhite,
              ),
            )),
        GroceryConst.sizedBoxWidth10,
        TextSmallBold(text: _kg.toString()),
        TextSmallBold(
          text: GroceryConst.text_kg,
        ),
        GroceryConst.sizedBoxWidth10,
        Container(
          decoration: BoxDecoration(
              borderRadius: GroceryConst.BorderRadiusCircular40,
              color: GroceryConst.colorGreen),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _kg++;
              });
            },
            child: Icon(
              Icons.add,
              color: GroceryConst.colorWhite,
            ),
          ),
        ),
      ],
    );
  }

  Stack _Stack() {
    return Stack(
      children: [_stackImage(), leftContainerIcon(), rowContainerIcon()],
    );
  }

  Image _stackImage() =>
      Image.asset(GroceryConst.image_brocoli, fit: BoxFit.cover);
}

class rowContainerIcon extends StatelessWidget {
  const rowContainerIcon({
    Key? key,
  }) : super(key: key);

  final double _right = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: _right,
        child: ContainerBacgroundWhite(
          widget: IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.search,
                color: GroceryConst.colorBlack,
              )),
        ));
  }
}

class leftContainerIcon extends StatelessWidget {
  const leftContainerIcon({
    Key? key,
  }) : super(key: key);

  final double _sizeLeft = 5;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _sizeLeft,
      child: ContainerBacgroundWhite(
        widget: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => GroceryHome(),
              ));
            },
            icon:
                Icon(Icons.arrow_back_ios_new, color: GroceryConst.colorBlack)),
      ),
    );
  }
}

class columnMiniContainerText extends StatelessWidget {
  const columnMiniContainerText({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  final double _fontSize = 13;
  final double _width = 6.85;
  final double _height = 15;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / _width,
          height: MediaQuery.of(context).size.height / _height,
          decoration: BoxDecoration(
            borderRadius: GroceryConst.BorderRadiusCircular10,
            color: GroceryConst.colorWhite,
          ),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        GroceryConst.sizedBoxHeight5,
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: GroceryConst.colorGrey, fontSize: _fontSize),
        ),
      ],
    );
  }
}
