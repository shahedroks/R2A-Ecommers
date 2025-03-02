import 'package:flutter/material.dart';
class CustomTextBox extends StatelessWidget {
  var hintText;
  var labelText;
  var controler;


 CustomTextBox({super.key,this.hintText,this.labelText});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller:controler ,
        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),borderSide: BorderSide(color: Colors.grey)),
        focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.all(Radius.circular(50))) ,hintText:hintText ,labelText: labelText));
  }
}
