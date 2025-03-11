import 'dart:convert';

import 'package:ecommers_project/page/login_page/custom_widget/custom_text_box.dart';
import 'package:ecommers_project/page/users_home_page/api/home_api.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_appber.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_button.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_cetagori_button.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_pageview.dart';
import 'package:ecommers_project/page/users_home_page/model/product%20_model.dart';
import 'package:ecommers_project/page/users_home_page/repository_home/get_product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
class UsersHomePage extends StatefulWidget {
   UsersHomePage({super.key});

  @override
  State<UsersHomePage> createState() => _UsersHomePageState();
  PageController con = PageController();
}

  // page View
  var image =[
  'assets/offer.jpg',
  'assets/ecommerce.jpg',
  'assets/offer.jpg',
  'assets/ecommerce.jpg',
];

  // current Page
  var currentIndex=0;

  // jeson Product
  List productData =[];



class _UsersHomePageState extends State<UsersHomePage> {








  void Getdata ()async{
    Response res = await get(product);
    var deCode = jsonDecode(res.body);
    setState(() {
      productData = (deCode["products"]as List).map((el)=>Product.fromJson(el)).toList();
    });

  }






  @override
  void initState() {
    // TODO: implement initState
    super.initState();
 Getdata();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 160,
              width: double.infinity,
              child: CustomPageview()),
          SizedBox(height: 5,),
          CustomCetagoriButton(),
        ],
      ),
    );
  }
}
