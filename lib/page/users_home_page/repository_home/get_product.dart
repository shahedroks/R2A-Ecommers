// import 'dart:convert';
//
// import 'package:ecommers_project/page/users_home_page/api/home_api.dart';
// import 'package:ecommers_project/page/users_home_page/model/product%20_model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
//
// void Getdata (List list)async{
//   Response res = await get(product);
//   var deCode = jsonDecode(res.body);
//   list = (deCode["products"]as List).map((el)=>Product.fromJson(el)).toList();
//
// }