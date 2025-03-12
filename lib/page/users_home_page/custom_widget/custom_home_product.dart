import 'package:ecommers_project/page/users_home_page/custom_widget/custom_error_image.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_prices.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_product_name.dart';
import 'package:ecommers_project/page/users_home_page/custom_widget/custom_rating.dart';
import 'package:ecommers_project/page/users_home_page/image.dart';
import 'package:ecommers_project/page/users_home_page/users_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
class CustomHomeProduct extends StatelessWidget {
  List productData;
   CustomHomeProduct({super.key,required this.productData,});
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: (1/1.5),
          crossAxisSpacing: 9,
          crossAxisCount: 2),
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: productData.length,
          itemBuilder: (context, index){
        final i = productData[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Stack(
                    children: [
                      Card(
                        color: Colors.grey[100],
                        child: CustomErrorImage(i: i,)
                      ),
                      Positioned(
                        top: 5,
                       right: 5,
                          child: Icon(Icons.favorite,size: 40,color: Colors.red,))
                    ],
                  ),
                ),
               CustomPrices(i: i),
                CustomRating(i: i,),
                CustomProductName(i: i),
              ],
            );
      }
      ),
    );


    
  }
}
