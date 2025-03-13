import 'dart:async';

import 'package:ecommers_project/page/users_home_page/api/home_api.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_event.dart';
import 'package:ecommers_project/page/users_home_page/user_home_bloc/home_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class PageViewBloc extends Bloc<PageViewEvent,PageViewState> {
  Timer? timer;

  PageViewBloc() :super(PageViewState(isCountIndex: 0,)) {
    on<OnPageViewUpdateEvent>((event, emit)  {
      var isCountIndexCopy = state.isCountIndex;
      // var isImageCopy = event.isImage??[];

      timer?.cancel();


      timer = Timer.periodic(Duration(seconds: 5), (Timer time) {
        if (isCountIndexCopy < event.isImage.length - 1) {
          isCountIndexCopy++;
          print(isCountIndexCopy);
        } else {
          isCountIndexCopy = 0;
        }
        print(isCountIndexCopy);
        emit(PageViewState(isCountIndex: isCountIndexCopy,));
      });
    });
  }



  @override
  Future<void> close() {
    timer?.cancel(); // null চেক করে Timer বন্ধ করো
    return super.close(); // মূল Bloc বন্ধ করার মেথড
  }
}


// CartBloc
class CartBloc extends Bloc<CartEvent,CartState> {
  Timer? timer;

  CartBloc() :super(CartState(isCartQuantity: 0,isCart: [])) {
    on<OnAddToCart>((event, emit)  {
     final int isCartQuantityCopy = state.isCartQuantity!;
     final List <dynamic> isCartCopy = state.isCart!;

     if(isCartCopy.contains(event.isProduct)){
       event.isProduct.quantity = event.isProduct.quantity++;



     }


    });
  }



  @override
  Future<void> close() {
    timer?.cancel(); // null চেক করে Timer বন্ধ করো
    return super.close(); // মূল Bloc বন্ধ করার মেথড
  }
}