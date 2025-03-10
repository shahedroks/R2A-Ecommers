import 'package:flutter/material.dart';

class CustomCetagoriButton extends StatelessWidget {
  final VoidCallback onPressed;
 CustomCetagoriButton({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        elevation: 1,
        child:Container(
          alignment: Alignment.center,
          height: 30,
          width: 80,
          child:Text("shahed") ,
        ) ,
      ),
    );
  }
}


