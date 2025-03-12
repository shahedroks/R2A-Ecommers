import 'package:ecommers_project/page/users_home_page/image.dart';
import 'package:ecommers_project/page/users_home_page/users_home_page.dart';
import 'package:flutter/material.dart';
class CustomHomeProduct extends StatelessWidget {
  List productData;
   CustomHomeProduct({super.key,required this.productData});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: (1/1),
          crossAxisSpacing: 9,
          crossAxisCount: 2),
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: productData.length,
          itemBuilder: (context, index){
        final i = productData[index];


            return Column(
              children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Card(
                  child: Image(image:NetworkImage((i.images.isNotEmpty)
                      ? i.images[0]
                      : "assets/isEmpty.png",),fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: Image.asset(
                          "assets/Loading.jpg", // লোডিং ইমেজ
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        "assets/error.fpg", // লোডিং ব্যর্থ হলে এই ইমেজ দেখাবে
                        fit: BoxFit.cover,
                      );
                    },

                  ),


                ),
              )
              ],
            );
      }
      ),
    );


    
  }
}
