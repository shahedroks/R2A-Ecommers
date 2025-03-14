part of "bloc.dart";

abstract class CartEvent{}
class OnAddToCart extends CartEvent{
  late dynamic isProduct;
  OnAddToCart(this.isProduct);

}