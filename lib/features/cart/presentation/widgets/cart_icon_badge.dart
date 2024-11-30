import 'package:add_to_cart_animation/add_to_cart_icon.dart';
import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flutter/material.dart';

class CartIconBadge extends StatefulWidget {
  const CartIconBadge({
    super.key,
    required this.cartKey,
    // required this.cartVisibility,
  });
  final GlobalKey<CartIconKey> cartKey;
  // final bool cartVisibility;

  @override
  State<CartIconBadge> createState() => _CartIconBadgeState();
}


class _CartIconBadgeState extends State<CartIconBadge> {
  @override
  Widget build(BuildContext context) {
    return AddToCartIcon(
      key: widget.cartKey,
      icon: const Icon(
        Icons.shopping_cart,
        color: MyColors.baseColor,
      ),
      badgeOptions: const BadgeOptions(
        foregroundColor:MyColors.baseColor,
        active: true,
        backgroundColor:  MyColors.lightPink,
      ),
    );
  }
}
