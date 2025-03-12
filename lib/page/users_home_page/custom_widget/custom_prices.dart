import 'package:flutter/material.dart';
class CustomPrices extends StatelessWidget {
  var i;
 CustomPrices({super.key,required this.i});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text("\$ ${i.price}",style: TextStyle(fontSize: 20),),
    );
  }
}
