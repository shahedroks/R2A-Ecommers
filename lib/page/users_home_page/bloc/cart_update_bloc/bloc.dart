// CartBloc
import 'package:flutter_bloc/flutter_bloc.dart';
part 'state.dart';
part 'event.dart';

class CartBloc extends Bloc<CartEvent,CartState> {
  CartBloc() :super(CartState(isCartQuantity: 0,isCart: [],isFavoriteButton: false)) {
    on<OnAddToCart>((event, emit) {
      int isCartQuantityCopy = state.isCartQuantity!;
      final List <dynamic> isCartCopy = state.isCart!;
      bool isFavoriteButtonCopy = state.isFavoriteButton;

      if (state.isCart!.contains(event.isProduct)) {
        event.isProduct.quantity = event.isProduct.quantity+1;
        isCartQuantityCopy = isCartQuantityCopy+1;
        isFavoriteButtonCopy = true;
        print("Cart emit all ok");
        print(isFavoriteButtonCopy);
      } else {
        isCartCopy.add(event.isProduct);
        event.isProduct = event.isProduct +1;
        event.isProduct.quantity = event.isProduct.quantity + 1;
        isFavoriteButtonCopy = true;
        print(state.isCartQuantity);
      }
      emit(CartState(isFavoriteButton: isFavoriteButtonCopy,isCart: isCartCopy,isCartQuantity: isCartQuantityCopy));

    });

  }

}