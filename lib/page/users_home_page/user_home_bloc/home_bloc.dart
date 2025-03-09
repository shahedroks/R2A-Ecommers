import 'dart:async';

import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_event.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_state.dart';
import 'package:ecommers_project/page/users_home_page/users_home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc():super(HomeState(countIndex: 0)){
    on<OnPageViewUpdateEvent>((event,emit)async{
      var countIndexCopy = state.countIndex;
      var imageCopy = event.image;






    await  Timer.periodic(Duration(seconds: 3), (Timer time) {
        print("Timer is okk");
        if (countIndexCopy < imageCopy.length-1) {
          countIndexCopy++;
          print('Duration OK');
        } else {
          countIndexCopy = 0;
        }
        emit(HomeState(countIndex: countIndexCopy,));
      });
    });
  }
}