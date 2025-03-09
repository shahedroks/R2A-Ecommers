import 'package:ecommers_project/page/login_page/block/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomTextBox extends StatelessWidget {
  var hintText;
  var labelText;
  var controler;
  // bool passwordVisible;
  bool isVisibleIconShow;
  bool isObscureText;
  final VoidCallback onPressed;


 CustomTextBox({super.key,this.hintText,this.labelText ,this.controler,required this.onPressed,required this.isVisibleIconShow,required this.isObscureText});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width*10,
        height:50 ,
        child: BlocBuilder<LoginBloc,LoginState>(
          builder: (context, static) {
            return TextFormField(
              keyboardType: TextInputType.text,
              obscureText:isObscureText? !static.isPasswordVisible:static.isObscureText,

              controller:controler ,
                decoration: InputDecoration(
                     suffix:isVisibleIconShow?
                   IconButton(onPressed: onPressed, icon: Icon(static.isPasswordVisible ? Icons.visibility:Icons.visibility_off)):Text("") ,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.grey)),
                focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.all(Radius.circular(10))) ,hintText:hintText ,labelText: labelText));
          }
        ),
      ),
    );
  }
}
