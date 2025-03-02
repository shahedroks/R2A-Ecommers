import 'package:flutter/material.dart';
class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        child: Image(image: AssetImage("assets/Logo.png")),
      ),
    );
  }
}
