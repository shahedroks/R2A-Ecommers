import 'package:ecommers_project/page/users_home_page/custom_widget/custom_appber.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_pageview.dart';
import 'package:flutter/material.dart';
class UsersHomePage extends StatefulWidget {
   UsersHomePage({super.key});

  @override
  State<UsersHomePage> createState() => _UsersHomePageState();
  PageController con = PageController();
}
var image =[
  'assets/offer.jpg',
  'assets/ecommerce.jpg',
      'assets/offer.jpg',
  'assets/ecommerce.jpg',
];
var currentIndex=0;

class _UsersHomePageState extends State<UsersHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
          child: CustomAppber()),
      body:CustomPageview(),
    );
  }
}
