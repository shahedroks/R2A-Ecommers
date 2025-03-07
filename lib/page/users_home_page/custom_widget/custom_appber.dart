import 'package:flutter/material.dart';

class CustomAppber extends StatelessWidget {
  const CustomAppber({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Image(image: AssetImage('assets/ecommerce.jpg',),fit: BoxFit.cover,),
      centerTitle: true,
    );
  }
}