import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class CustomRating extends StatelessWidget {
  var i;
 CustomRating({super.key,required this.i});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.5),
          child: StarRating(rating: i.rating!,color:Colors.red,),
        ),

        Text('(${i.rating})')
      ],
    );
  }
}
