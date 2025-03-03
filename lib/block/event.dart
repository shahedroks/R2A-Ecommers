part of'bloc.dart';

abstract class CounterEvent{}

class OnPasswordVisible extends CounterEvent{
  final bool isPasswordVisible ;
  // final bool isVisibleIconShow;
  // final bool isObscureText;
  OnPasswordVisible({required this.isPasswordVisible,
    // required this.isVisibleIconShow,required this.isObscureText
  });
}
