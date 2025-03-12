import 'dart:async';

import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_event.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_state.dart';
import 'package:ecommers_project/page/users_home_page/users_home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState> {
  Timer? timer;

  HomeBloc() :super(HomeState(countIndex: 0)) {
    on<OnPageViewUpdateEvent>((event, emit) async {
      var countIndexCopy = state.countIndex;
      var imageCopy = event.image??[];

      timer?.cancel();


      timer = Timer.periodic(Duration(seconds: 5), (Timer time) {
        if (countIndexCopy < imageCopy.length - 1) {
          countIndexCopy++;
          print(countIndexCopy);
        } else {
          countIndexCopy = 0;
        }
        print(countIndexCopy);
        emit(HomeState(countIndex: countIndexCopy,));
      });
    });
  }

  @override
  Future<void> close() {
    timer?.cancel(); // null চেক করে Timer বন্ধ করো
    return super.close(); // মূল Bloc বন্ধ করার মেথড
  }
}