import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:grocery_homework/grocery/const/grocery_const.dart';
import 'package:grocery_homework/grocery/widget/card_fruit.dart';
import 'package:grocery_homework/grocery/widget/container_bacground_white.dart';
import 'package:grocery_homework/grocery/widget/text_large_bold.dart';
import 'package:grocery_homework/grocery/widget/text_small_grey.dart';

class GroceryHome extends StatelessWidget {
  GroceryHome({super.key});

  final iconList = <IconData>[
    Icons.home_filled,
    Icons.content_paste,
    Icons.bookmark_add_outlined,
    Icons.supervisor_account_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GroceryConst.colorBlue,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.shopping_cart_outlined,
            size: 28,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        onTap: (p1) {},
        icons: iconList,
        activeIndex: 1,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        activeColor: GroceryConst.colorGreen,
      ),
      body: Padding(
        padding: GroceryConst.paddingAll5,
        child: Container(
          color: GroceryConst.colorGreyTwo,
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _rowAppBar(),
                  GroceryConst.sizedBoxHeight30,
                  _containerCard(context),
                  GroceryConst.sizedBoxHeight20,
                  rowTextPopularSeeAll(text: GroceryConst.row_text_popular),
                  GroceryConst.sizedBoxHeight15,
                  _rowCardOne(),
                  GroceryConst.sizedBoxHeight15,
                  rowTextPopularSeeAll(text: GroceryConst.row_text_newItems),
                  GroceryConst.sizedBoxHeight15,
                  _rowCarTwo(),
                  GroceryConst.sizedBoxHeight15,
                  _rowCarTwo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _rowCarTwo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardFruit(
            image: GroceryConst.image_potato,
            fruitName: GroceryConst.text_potato),
        CardFruit(
            image: GroceryConst.image_brocoli,
            fruitName: GroceryConst.text_Broccoli),
      ],
    );
  }

  Row _rowCardOne() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardFruit(
            image: GroceryConst.image_chinese_cabbage,
            fruitName: GroceryConst.text_chinese_cabbage),
        CardFruit(
            image: GroceryConst.image_tomato,
            fruitName: GroceryConst.text_tomatoes),
      ],
    );
  }

  Container _containerCard(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: GroceryConst.BorderRadiusCircular20,
          color: GroceryConst.colorGreen),
      child: Stack(
        children: [
          _rowPositionColumnTextOrder(),
          _containerWhiteText(context),
          _positionedImage(context)
        ],
      ),
    );
  }

  Positioned _positionedImage(BuildContext context) {
    return Positioned(
        right: 0,
        child: Image.asset(
          GroceryConst.image_stack_fruit,
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 5,
        ));
  }

  Positioned _containerWhiteText(BuildContext context) {
    return Positioned(
      left: 20,
      bottom: 30,
      child: Container(
        height: MediaQuery.of(context).size.height / 28,
        width: MediaQuery.of(context).size.width / 3.5,
        decoration: BoxDecoration(
            borderRadius: GroceryConst.BorderRadiusCircular20,
            color: GroceryConst.colorWhite),
        child: Center(
          child: Text(GroceryConst.stack_text_order,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: GroceryConst.colorGreen)),
        ),
      ),
    );
  }

  Positioned _rowPositionColumnTextOrder() {
    return Positioned(
      left: 20,
      top: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLargeBold(text: GroceryConst.stack_text_order_our, size: 22),
          GroceryConst.sizedBoxHeight5,
          TextLargeBold(text: GroceryConst.stack_text_groceries, size: 22),
          GroceryConst.sizedBoxHeight15,
        ],
      ),
    );
  }

  Row _rowAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ContainerBacgroundWhite(widget: Icon(Icons.list_outlined)),
            GroceryConst.sizedBoxWidth10,
            Text(
              GroceryConst.appBar_text_location,
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
            ),
          ],
        ),
        ContainerBacgroundWhite(widget: Icon(Icons.search))
      ],
    );
  }
}

class rowTextPopularSeeAll extends StatelessWidget {
  const rowTextPopularSeeAll({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLargeBold(text: text, size: 20),
        Text(
          GroceryConst.row_text_see,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: GroceryConst.colorGreen),
        )
      ],
    );
  }
}
