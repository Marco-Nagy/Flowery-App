import 'package:flowery_e_commerce/features/cart/presentation/viewModel/cart_view_model_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBlocListenerWidget extends StatelessWidget {
  const CartBlocListenerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CartViewModelCubit cartViewModelCubit = context.read()<CartViewModelCubit>();
    return BlocListener<CartViewModelCubit, CartViewModelState>(
      listener: (context, state) async {
        switch(state){

          case AddProductToCartSuccess():
            await cartViewModelCubit.cartKey.currentState!
                .runCartAnimation(state.numOfCartItems.toString());
          case GetUserCartDataSuccess():
            cartViewModelCubit.cartQuantityItems =state.cartData.numOfCartItems;
          case UpdateCartProductQuantitySuccess():
            cartViewModelCubit.cartQuantityItems =state.cartData.numOfCartItems;
          case RemoveProductFromCartSuccess():
          case ClearUserCartDataSuccess():
          case CartViewModelInitial():
            
          case CartViewModelLoading():
            
          case CartViewModelError():
            
            
        }
      },
      child: Container(),
    );
  }
}
