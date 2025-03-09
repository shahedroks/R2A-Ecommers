part of'login_bloc.dart';

abstract class LoginEvent{}

class OnPasswordVisibleEvent extends LoginEvent{
  final bool isPasswordVisible ;
  // final bool isVisibleIconShow;
  // final bool isObscureText;
  OnPasswordVisibleEvent({required this.isPasswordVisible,
    // required this.isVisibleIconShow,required this.isObscureText
  });
}
class OnPageChangeEvent extends LoginEvent{
  var countsIndex;
  List image;
  OnPageChangeEvent({this.countsIndex, required this.image});
}
