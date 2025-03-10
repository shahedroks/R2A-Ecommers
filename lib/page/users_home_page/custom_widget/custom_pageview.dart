import 'package:ecommers_project/page/users_home_page/funtion/pageview_function.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_bloc.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_event.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_state.dart';
import 'package:ecommers_project/page/users_home_page/users_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomPageview extends StatefulWidget {
  // final List? image;
  // var currentIndex;
  // var controler;


 CustomPageview({super.key,
   // required this.image
 });

  @override
  State<CustomPageview> createState() => _CustomPageviewState();
}

class _CustomPageviewState extends State<CustomPageview> {
  // singel function
  // PageChangeView pageChangeView =PageChangeView(currentIndex, image);
  // PageChange pageChange = PageChange();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc,HomeState>(
      builder: (context,statec) {
        return PageView.builder(
          itemCount:image.length,

          // controller: widget.controler,

          onPageChanged: (index){
            // setState(() {
            //   pageChange.isPageChange(pageChangeView);

            //   print('$index');
            // });

            context.read<HomeBloc>().add(OnPageViewUpdateEvent(image:image));
          },
          itemBuilder:(contex, index){
            return Stack(
              children: [
                Positioned(


                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    padding: EdgeInsets.symmetric(horizontal: 2),

                    height:190,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image(image: AssetImage('${image[index]}'),fit: BoxFit.cover,)),
                  ),
                )
              ],
            );
          } ,
        );
      }
    );
  }
}
