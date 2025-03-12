import 'package:ecommers_project/page/login_page/block/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomSearchBer extends StatelessWidget {
  const CustomSearchBer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.grey[200]),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width*10,
        height:50 ,
        child: BlocBuilder<LoginBloc,LoginState>(
            builder: (context, static) {
              return TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText:false,

                  controller:null ,
                  decoration: InputDecoration(
                    suffix: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.all(Radius.circular(10))),hintText: "Secrch",hintStyle: TextStyle(color: Colors.grey[400])
              ));
            }
        ),
      ),
    );
  }
}
