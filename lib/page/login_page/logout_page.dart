import 'package:ecommers_project/page/login_page/block/login_bloc.dart';
import 'package:ecommers_project/page/login_page/compronet/text.dart';
import 'package:ecommers_project/page/login_page/custom_widget/custom_image.dart';
import 'package:ecommers_project/page/login_page/custom_widget/custom_signin_box.dart';
import 'package:ecommers_project/page/login_page/custom_widget/custom_text_box.dart';
import 'package:ecommers_project/page/login_page/custom_widget/custom_welcome_text.dart';
import 'package:ecommers_project/page/login_page/iogin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LogoutPage extends StatefulWidget {
  const LogoutPage({super.key});

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}
var passwordVisible = false;

class _LogoutPageState extends State<LogoutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width*10,
        height: MediaQuery.of(context).size.height*10,
        decoration: BoxDecoration(color: Colors.white),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: BlocBuilder<LoginBloc,LoginState>(
              builder: (context, static) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    CustomImage(),
                    CustomWelcomeText(welcomeText: signUp, signIn: signup2,),
                    SizedBox(height: 30,),
                    CustomTextBox(hintText: hintName,labelText: labelName,
                isVisibleIconShow: static.isVisibleIconShow,
                      isObscureText: static.isObscureText,
                      onPressed: (){},),
                    SizedBox(height: 20,),
                    CustomTextBox(
                      hintText: hintEmail,
                      labelText: lebalEmail,
                isObscureText: static.isObscureText,
                isVisibleIconShow: static.isVisibleIconShow,
                onPressed:(){},),
                    SizedBox(height: 20,),
                    CustomTextBox(hintText: hintPassword,labelText: lebalPassword,
                            isVisibleIconShow: !static.isVisibleIconShow,
                      isObscureText: !static.isObscureText,
                            onPressed: (){
                          context.read<LoginBloc>().add(OnPasswordVisibleEvent(isPasswordVisible: static.isPasswordVisible));
                        },),



                    SizedBox(height: 30,),


                    CustomSigninBox(signup: signUp,signin: signin,account: haveAccount,function: (){
                      Navigator.pushNamed(context, '/');
                    },)
                  ],
                );
              }
            ),
          ),
        )
    );


  }
}
