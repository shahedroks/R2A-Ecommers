abstract class PageViewEvent {}
abstract class CartEvent{}
class OnPageViewUpdateEvent extends PageViewEvent{
  List isImage;
  OnPageViewUpdateEvent({required this.isImage});
}

class OnAddToCart extends CartEvent{
  late dynamic isProduct;
  OnAddToCart(this.isProduct);

}