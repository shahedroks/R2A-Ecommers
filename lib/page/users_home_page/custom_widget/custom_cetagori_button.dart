import 'package:ecommers_project/page/users_home_page/repository_home/get_product.dart';
import 'package:ecommers_project/page/users_home_page/users_home_page.dart';
import 'package:flutter/material.dart';

class CustomCetagoriButton extends StatelessWidget {

 CustomCetagoriButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: productData.map((i) => i.category).toSet().map((category){
          return Card(
            elevation: 1,
            child:Container(
              alignment: Alignment.center,
              height: 30,
              width: 80,
              child:Text(category) ,
            ) ,
          );
        }).toSet().toList()

      ),
    );
  }
}


