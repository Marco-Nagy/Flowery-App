import 'package:flowery_e_commerce/features/cart/data/models/request/add_product_to_cart_request_dto.dart';
import 'package:flowery_e_commerce/features/cart/data/models/request/update_cart_product_quantity_request_dto.dart';
import 'package:flowery_e_commerce/features/cart/data/models/response/add_to_cart_response_dto.dart';
import 'package:flowery_e_commerce/features/cart/data/models/response/cart_response_dto.dart';
import 'package:flowery_e_commerce/features/cart/domain/entities/cart_entity.dart';
import 'package:flowery_e_commerce/features/cart/domain/entities/cart_response_entity.dart';

class CartMappers {
  AddProductToCartRequestDto toCrtRequestDto(String id) {
    return AddProductToCartRequestDto(product: id, quantity: 1);
  }

  UpdateCartProductQuantityRequestDto toUpdateCartRequestDto(int quantity) {
    return UpdateCartProductQuantityRequestDto(quantity: quantity );
  }

  int numOfCartItems(AddToCartResponseDto cartResponse) {
    return cartResponse.numOfCartItems ?? 0;
  }

  CartProductEntity toCartProductEntity(CartItemsDto product) {
    return CartProductEntity(
        id: product.id,
        title: product.product!.title ?? "",
        quantity: product.quantity,
        price: product.price,
        cartItemQuantity: product.product!.quantity,
        imgCover: product.product!.imgCover);
  }

  List<CartProductEntity> toCartItemsList(CartResponseDto cartResponse) {
    return cartResponse.cart!.cartItems!
        .map((product) => toCartProductEntity(product!))
        .toList();
  }

  CartEntity toCartEntity(CartResponseDto cartResponse) {
    return CartEntity(
      numOfCartItems: cartResponse.numOfCartItems??0,
      cartList: toCartItemsList(cartResponse),
      discount: cartResponse.cart!.discount??0.0,
      totalPrice: cartResponse.cart!.totalPrice??0.0,
      totalPriceAfterDiscount:
          cartResponse.cart!.totalPriceAfterDiscount??0.0,
    );
  }
}
