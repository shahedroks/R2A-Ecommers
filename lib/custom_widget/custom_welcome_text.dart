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
            margin: EdgeInsets.only(top: 250),
            child: Text(welcomeText,style: TextStyle(
                fontSize: 40,fontWeight: FontWeight.bold
            ),),
          ),
        ),
       Text('sh')


      ],
    );
  }
}
