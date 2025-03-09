import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_state.dart';
part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  LoginBloc(): super(LoginState(isPasswordVisible: false,isVisibleIconShow: false,isObscureText: false)){
    on<OnPasswordVisibleEvent>((event,emai){
      print('shaheddd');
      var _passwordVisibleCopy = event.isPasswordVisible;
      _passwordVisibleCopy =!_passwordVisibleCopy;
      print("onPasswordVisible is all right");


      emit(LoginState(isPasswordVisible: _passwordVisibleCopy,isVisibleIconShow: false,isObscureText: false)
      );
    });
    // on<OnPageChangeEvent>((event, emit) {
    //   var countIndex = event.countsIndex;
    //   var image = event.image;
    //
    //   // টাইমার ব্যবহার করে প্রতি ৩ সেকেন্ড পর পেজ পরিবর্তন
    //   Timer.periodic(Duration(seconds: 3), (Timer time) {
    //     // যদি শেষ ছবিতে না পৌঁছে থাকি, পরবর্তী ছবিতে চলে যাওয়া
    //     if (countIndex < image.length - 1) {
    //       countIndex++;
    //       print('Duration OK');
    //     } else {
    //       // যদি শেষ ছবিতে পৌঁছে যাই, প্রথম ছবিতে ফিরে যাওয়া
    //       countIndex = 0;
    //     }
    //
    //     // পেজ ইনডেক্স স্টেট ইমিট করা
    //     emit(OnPageChangeState(countsIndex: countIndex, image: image));
    //   });
    // });
    //
    //



   
  }
}