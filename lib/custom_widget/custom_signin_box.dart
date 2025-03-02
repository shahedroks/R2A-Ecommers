import 'package:ecommers_project/compronet/color.dart';
import 'package:flutter/material.dart';
class CustomSigninBox extends StatelessWidget {
  var signup;
  var signin;
  var account;

   CustomSigninBox({super.key,this.signup,this.signin,this.account});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(

        borderRadius: BorderRadius.all(Radius.circular(10)),

        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                height: 50,
                width: 220,
                decoration: BoxDecoration(color:Colors.orange),
                child: Text(signup,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(account),
                SizedBox(width: 20,),
                Text(signin,style: TextStyle(color:Colors.lightBlueAccent),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
