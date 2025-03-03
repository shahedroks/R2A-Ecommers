
import 'package:flutter_bloc/flutter_bloc.dart';
part 'state.dart';
part 'event.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc(): super(CounterState(isPasswordVisible: false,isVisibleIconShow: false,isObscureText: false)){
    on<OnPasswordVisible>((event,emai){
      var _passwordVisibleCopy = event.isPasswordVisible;
      _passwordVisibleCopy =!_passwordVisibleCopy;
      print("onPasswordVisible is all right");


      emit(CounterState(isPasswordVisible: _passwordVisibleCopy,isVisibleIconShow: false,isObscureText: false)
      );
    });

   
  }
}