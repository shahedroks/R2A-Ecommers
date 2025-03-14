import 'package:ecommers_project/page/login_page/block/login_bloc.dart';
import 'package:ecommers_project/page/login_page/iogin_page.dart';
import 'package:ecommers_project/page/login_page/logout_page.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_bloc.dart';
import 'package:ecommers_project/page/users_home_page/users_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => LoginBloc()),
      BlocProvider(create: (_) => CartBloc()),
      BlocProvider(create: (_) => PageViewBloc()),

    ],
      child: MaterialApp(
        initialRoute: ' /',
        routes: {
          '/': (context)=> UsersHomePage(),
          '/sdg': (context)=> LoginPage(),
          "/logoutpage":(context)=>LogoutPage()

        },
        debugShowCheckedModeBanner: false,

      ),
    );
  }}