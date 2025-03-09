abstract class HomeEvent {}
class OnPageViewUpdateEvent extends HomeEvent{
  List image;
  OnPageViewUpdateEvent({required this.image});
}