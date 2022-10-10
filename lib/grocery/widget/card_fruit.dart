import 'package:flutter/material.dart';
import 'package:grocery_homework/grocery/const/grocery_const.dart';
import 'package:grocery_homework/grocery/view/grocery_detail.dart';
import 'package:grocery_homework/grocery/widget/text_large_bold.dart';
import 'package:grocery_homework/grocery/widget/text_small_grey.dart';

class CardFruit extends StatelessWidget {
  const CardFruit({super.key, required this.image, required this.fruitName});

  final String image;
  final String fruitName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => GroceryDetail(),
        ));
      },
      child: ClipRRect(
        borderRadius: GroceryConst.BorderRadiusCircular30,
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2.2,
          height: MediaQuery.of(context).size.height / 3,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 6, child: _cardImage(context)),
                GroceryConst.sizedBoxHeight10,
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
                    child: _columnTexts(context),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _columnTexts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLargeBold(text: fruitName, size: 17),
        GroceryConst.sizedBoxHeight10,
        TextSmallGrey(
          text: GroceryConst.text_kg,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_priceText(), _rowContainerIconButton(context)],
        ),
      ],
    );
  }

  Row _rowContainerIconButton(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 10,
          height: MediaQuery.of(context).size.height / 20,
          decoration: BoxDecoration(
              borderRadius: GroceryConst.BorderRadiusCircular40,
              color: Color.fromARGB(255, 87, 241, 92)),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: GroceryConst.colorWhite,
              )),
        )
      ],
    );
  }

  Row _priceText() {
    return Row(
      children: [
        TextLargeBold(text: GroceryConst.text_price, size: 18),
        GroceryConst.sizedBoxWidth5,
        Text(
          GroceryConst.text_price_line,
          style: TextStyle(
            color: GroceryConst.colorGrey,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
          ),
        ),
      ],
    );
  }

  Image _cardImage(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 7,
    );
  }
}
