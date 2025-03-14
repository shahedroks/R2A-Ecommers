abstract class PageViewEvent {}
abstract class CartEvent{}


class OnPageViewUpdate extends PageViewEvent{
  List isImage;
  OnPageViewUpdate({required this.isImage});
}

class OnAddToCart extends CartEvent{
  late dynamic isProduct;
  OnAddToCart(this.isProduct);

}