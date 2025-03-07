import 'package:ecommers_project/page/users_home_page/custom_widget/custom_appber.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_pageview.dart';
import 'package:flutter/material.dart';
class UsersHomePage extends StatefulWidget {
  const UsersHomePage({super.key});

  @override
  State<UsersHomePage> createState() => _UsersHomePageState();
}
var imagee =[
  'ecommerce',
  'offer'
];

class _UsersHomePageState extends State<UsersHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
          child: CustomAppber()),
      body:CustomPageview(image: imagee),
    );
  }
}
