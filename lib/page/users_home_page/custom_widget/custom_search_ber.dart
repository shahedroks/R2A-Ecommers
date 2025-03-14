import 'package:ecommers_project/page/login_page/block/login_bloc.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_favorat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomSearchBer extends StatelessWidget {
  const CustomSearchBer({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeheight = MediaQuery.of(context).size.height;
    double sizewidth = MediaQuery.of(context).size.width;
    return BlocBuilder<LoginBloc,LoginState>(
        builder: (context, static) {
          return Row(
            children: [
              Expanded(
                child: Container(
             margin: EdgeInsets.only(left: 5,right: 5),

                  height: sizeheight*0.06,

                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText:false,

                      controller:null ,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        suffix: Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.all(Radius.circular(10))),hintText: "Secrch",hintStyle: TextStyle(color: Colors.grey[400])
                  )),
                ),
              ),
             SizedBox(width: 3,),
            CustomFavoratList()
            ],
          );
        }
    );
  }
}
