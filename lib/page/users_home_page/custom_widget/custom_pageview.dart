import 'package:flutter/material.dart';
class CustomPageview extends StatefulWidget {
  final List image;
  var currentIndex;
  var controler;


 CustomPageview({super.key,required this.image,this.currentIndex,this.controler});

  @override
  State<CustomPageview> createState() => _CustomPageviewState();
}

class _CustomPageviewState extends State<CustomPageview> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: widget.image.length,
      controller: widget.controler,

      onPageChanged: (inderx){
        setState(() {
          widget.currentIndex = inderx;
        });
      },
      itemBuilder:(contex, inderx){
        return Stack(
          children: [
            Positioned(
              top: 10,

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 5),

                height:150 ,
                width: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image(image: AssetImage('${widget.image[inderx]}'),fit: BoxFit.cover,)),
              ),
            )
          ],
        );
      } ,
    );
  }
}
