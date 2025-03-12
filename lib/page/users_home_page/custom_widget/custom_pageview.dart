import 'package:ecommers_project/page/users_home_page/funtion/pageview_function.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_bloc.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_event.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_state.dart';
import 'package:ecommers_project/page/users_home_page/users_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomPageview extends StatefulWidget {
  final List? image;
  // var currentIndex;
 //  page controler
 CustomPageview({super.key,required this.image});
  @override
  State<CustomPageview> createState() => _CustomPageviewState();
}
class _CustomPageviewState extends State<CustomPageview> {
  // singel function
  // PageChangeView pageChangeView =PageChangeView(currentIndex, image);
  // PageChange pageChange = PageChange();

  late PageController pageController;
  late int currentIndex ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
    currentIndex = 0;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(OnPageViewUpdateEvent(image: widget.image!));
    });

  }
  @override
  Widget build(BuildContext context) {
    return

      // page auto change
      BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
      if (pageController.hasClients) {
        pageController.animateToPage(
          state.countIndex,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        );
      }

        return PageView.builder(
          itemCount: widget.image?.length??0,

          controller:pageController,

          onPageChanged: (index){
            setState(() {
              currentIndex =index;
              context.read<HomeBloc>().add(OnPageViewUpdateEvent(image:widget.image!));
            });

          },
          itemBuilder:(contex, index){
            return Stack(
              children: [
                Positioned(


                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    padding: EdgeInsets.symmetric(horizontal: 2),

                    height:200,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image(image: AssetImage('${widget.image?[index]}'),fit: BoxFit.cover,)),
                  ),
                )
              ],
            );
          } ,
        );
      }
    );}


}
