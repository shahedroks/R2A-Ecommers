import 'package:flutter/material.dart';
class CustomSigninBox extends StatelessWidget {
  var text;

   CustomSigninBox({super.key,this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(

        borderRadius: BorderRadius.all(Radius.circular(10)),

        child: Container(
            alignment: Alignment.center,
            height: 35,
            width: 120,
            decoration: BoxDecoration(color:Colors.grey),
            child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)),
      ),
    );
  }
}
