import 'package:flutter/material.dart';
class CustomWelcomeText extends StatelessWidget {

  var welcomeText;
  var signIn;
   CustomWelcomeText({super.key ,this.welcomeText,this.signIn});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(welcomeText,style: TextStyle(
                fontSize: 50,fontWeight: FontWeight.bold,fontFamily: "text1"
            ),),
          ),
        ),
       Text(signIn)


      ],
    );
  }
}
