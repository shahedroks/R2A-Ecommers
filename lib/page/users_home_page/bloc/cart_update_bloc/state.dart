part of 'bloc.dart';

class CartState {
  final int? isCartQuantity;
  final List <dynamic>? isCart;
  bool isFavoriteButton;

  CartState({this.isCartQuantity,  this.isCart,required this.isFavoriteButton});
}
