abstract class PageViewEvent {}



class OnPageViewUpdate extends PageViewEvent{
  List isImage;
  OnPageViewUpdate({required this.isImage});
}

