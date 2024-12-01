import 'package:add_to_cart_animation/add_to_cart_icon.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

part 'cart_view_model_state.dart';
@injectable
class CartViewModelCubit extends Cubit<CartViewModelState> {
  CartViewModelCubit() : super(CartViewModelInitial());
  final cartKey = GlobalKey<CartIconKey>();
  bool cartVisibility = false;
  Function(GlobalKey)? addToCartAnimation;
  int cartQuantityItems = 0;

  Future<void> addToCart() async {
    cartQuantityItems;
    await cartKey.currentState!
        .runCartAnimation((++cartQuantityItems).toString());
    cartVisibility = true;
    emit(AddCarItemSuccess(visibility: cartVisibility));
  }
  void updateCartCount() {
    if (cartKey.currentState != null) {
      cartKey.currentState!.runCartAnimation(
        cartQuantityItems.toString(),
      );
    }
  }

}
