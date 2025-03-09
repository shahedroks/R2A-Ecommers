import 'package:ecommers_project/page/login_page/block/login_bloc.dart';
import 'package:ecommers_project/page/login_page/compronet/text.dart';
import 'package:ecommers_project/page/login_page/custom_widget/custom_image.dart';
import 'package:ecommers_project/page/login_page/custom_widget/custom_signin_box.dart';
import 'package:ecommers_project/page/login_page/custom_widget/custom_text_box.dart';
import 'package:ecommers_project/page/login_page/custom_widget/custom_welcome_text.dart';
import 'package:ecommers_project/page/login_page/logout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var visibleShowIcon = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width*10,
        height: MediaQuery.of(context).size.height*10,
        decoration: BoxDecoration(color: Colors.white),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                CustomImage(),
                CustomWelcomeText(welcomeText: welcome,signIn: signin2,),


              SizedBox(height: 70,),
              BlocBuilder<LoginBloc,LoginState>(
                builder: (context, static) {

                  return CustomTextBox(
                    hintText: hintEmail,
                    labelText: lebalEmail,
                    isVisibleIconShow:static.isVisibleIconShow,
                    isObscureText: static.isObscureText,
                    onPressed: (){},);
                }
              ),
                SizedBox(height: 20,),
            
                BlocBuilder<LoginBloc,LoginState>(
                  builder: (context, static) {
                    return CustomTextBox(hintText: hintPassword,labelText: lebalPassword,
                      isVisibleIconShow:!static.isVisibleIconShow,
                      isObscureText: !static.isObscureText,
                      onPressed: (){
                      context.read<LoginBloc>().add(OnPasswordVisibleEvent(isPasswordVisible: static.isPasswordVisible,));
                    },);
                  }
                ),
            
                Container(
                  margin: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                    child: Text('Forget password',style: TextStyle(color: Colors.lightBlue,),)),
                SizedBox(height: 12,),
            
            
                CustomSigninBox(signup: signin,account: noAccount,signin: signUp,
                  function: (){
                  Navigator.pushNamed(context, '/logoutpage');
                }
                ,)
              ],
            ),
          ),
        )
      );


  }
}
