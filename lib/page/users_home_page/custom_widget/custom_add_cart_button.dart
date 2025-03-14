import 'package:flutter/material.dart';
class CustomAddCartButton extends StatelessWidget {
  const CustomAddCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 5,
        right: 5,
        child: statec.isFavoriteButton?
        Icon(Icons.favorite,size: 40,color: Colors.red,):
        Icon(Icons.favorite_border,size: 40,color: Colors.red,));
  }
}
