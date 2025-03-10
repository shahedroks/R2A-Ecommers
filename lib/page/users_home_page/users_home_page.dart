import 'package:ecommers_project/page/users_home_page/custom_widget/custom_appber.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_cetagori_button.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_pageview.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
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
        preferredSize: Size.fromHeight(90),
          child: CustomAppber()),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
              width: double.infinity,
              child: CustomPageview()),
          SizedBox(height: 5,),
          CustomCetagoriButton(onPressed: (){})
        ],
      ),
    );
  }
}
