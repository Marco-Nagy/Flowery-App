import 'package:flowery_e_commerce/features/cart/presentation/viewModel/cart_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/cart/presentation/widgets/cart_icon_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/arrow_back_widget.dart';
import '../widgets/product_details_widget.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final dynamic product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: ProductDetailsWidget(product: product),
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                arrowBackWidget(context),
                CartIconBadge(
                  cartKey: context.read<CartViewModelCubit>().cartKey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
