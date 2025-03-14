import 'package:flutter/material.dart';
class CustomFavoratList extends StatelessWidget {
  const CustomFavoratList({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeheight = MediaQuery.of(context).size.height;
    double sizewidth = MediaQuery.of(context).size.width;
    return  ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: Container(
        margin: EdgeInsets.only(right: 2),
        width: sizewidth*0.30,
        height: sizeheight*0.06,
        color: Colors.orange,
        child:
        Icon(Icons.shopping_cart_outlined),),
    );
  }
}
