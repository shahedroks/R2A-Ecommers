import 'package:flutter/material.dart';
class CustomErrorImage extends StatelessWidget {
  var i;
 CustomErrorImage({super.key,required this.i});

  @override
  Widget build(BuildContext context) {
    return Image(image:NetworkImage((i.images.isNotEmpty)
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

    );
  }
}
