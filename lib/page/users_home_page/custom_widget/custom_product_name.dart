import 'package:flutter/material.dart';

class CustomProductName extends StatelessWidget {
  var i;
 CustomProductName({super.key,required this.i});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text("${i.title}",style: TextStyle(fontSize: 20),maxLines: 1,overflow: TextOverflow.ellipsis,),
    );
  }
}
