import 'package:ecommers_project/compronet/text.dart';
import 'package:ecommers_project/custom_widget/custom_image.dart';
import 'package:ecommers_project/custom_widget/custom_signin_box.dart';
import 'package:ecommers_project/custom_widget/custom_text_box.dart';
import 'package:ecommers_project/custom_widget/custom_welcome_text.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width*10,
        height: MediaQuery.of(context).size.height*10,
        decoration: BoxDecoration(color: Colors.white),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              CustomImage(),
              CustomWelcomeText(welcomeText: welcome,signIn: signin2,),
            SizedBox(height: 70,),
            CustomTextBox(
              hintText: hintEmail,
              labelText: lebalEmail,),
              SizedBox(height: 20,),

              CustomTextBox(hintText: hintPassword,labelText: lebalPassword,),

              Container(
                margin: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                  child: Text('Forget password',style: TextStyle(color: Colors.lightBlue,),)),
              SizedBox(height: 12,),


              CustomSigninBox(signup: signin,account: noAccount,signin: signUp,)
            ],
          ),
        )
      );


  }
}
