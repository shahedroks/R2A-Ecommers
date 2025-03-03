import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class CustomTextBox extends StatelessWidget {
  var hintText;
  var labelText;
  var controler;
  bool passwordVisible;
  bool visibleIconShow;
  final VoidCallback onPressed;


 CustomTextBox({super.key,this.hintText,this.labelText, required this. passwordVisible ,this.controler,required this.visibleIconShow,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width*10,
        height:50 ,
        child: TextFormField(
          keyboardType: TextInputType.text,
          obscureText: !passwordVisible,

          controller:controler ,
            decoration: InputDecoration(
                 suffix:visibleIconShow?
               IconButton(onPressed: onPressed, icon: Icon(!passwordVisible?Icons.visibility_off:Icons.visibility)):Text("") ,
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.grey)),
            focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.all(Radius.circular(10))) ,hintText:hintText ,labelText: labelText)),
      ),
    );
  }
}
