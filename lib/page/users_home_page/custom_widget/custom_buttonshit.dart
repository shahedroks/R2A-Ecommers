import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  CurvedNavigationBar(
    index: 0,
    height: 40,
    buttonBackgroundColor: Colors.orange,
    backgroundColor: Colors.grey,
    items: <Widget>[
    Icon(Icons.add, size: 30),
    Icon(Icons.list, size: 30),
    Icon(Icons.compare_arrows, size: 30),
    Icon(Icons.call_split, size: 30),
    Icon(Icons.perm_identity, size: 30),
    ],);
  }
}
