import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:flowery_e_commerce/core/routes/app_routes.dart';
import 'package:flowery_e_commerce/core/services/shared_preference/shared_pref_keys.dart';
import 'package:flowery_e_commerce/core/services/shared_preference/shared_preference_helper.dart';
import 'package:flowery_e_commerce/core/styles/fonts/my_fonts.dart';
import 'package:flowery_e_commerce/core/utils/extension/navigation.dart';
import 'package:flowery_e_commerce/core/utils/widgets/buttons/add_cart_button.dart';
import 'package:flowery_e_commerce/di/di.dart';
import 'package:flowery_e_commerce/features/cart/presentation/viewModel/cart_base_action.dart';
import 'package:flowery_e_commerce/features/cart/presentation/viewModel/cart_view_model_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/styles/colors/my_colors.dart';
import '../../../../core/utils/widgets/spacing.dart';
import '../widgets/slider_image.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductDetailsWidget extends StatefulWidget {
  const ProductDetailsWidget({super.key, this.product});
  final dynamic product;

  @override
  State<ProductDetailsWidget> createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  late Function(GlobalKey) addToCartAnimation;
  final GlobalKey widgetKey = GlobalKey();
  void listClick(GlobalKey widgetKey) async {
    CartViewModelCubit cartViewModelCubit = context.read<CartViewModelCubit>();
    final GlobalKey widgetKey = GlobalKey();
    cartViewModelCubit.doAction(GetUserCartDataAction());

    addToCartAnimation(widgetKey);

    cartViewModelCubit.cartKey.currentState!
        .runCartAnimation(cartViewModelCubit.cartQuantityItems.toString());
  }

  @override
  void initState() {
    super.initState();
    CartViewModelCubit cartViewModelCubit = context.read<CartViewModelCubit>();

    // Initialize the cart count to 20
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      cartViewModelCubit.doAction(GetUserCartDataAction());
      cartViewModelCubit.cartKey.currentState!
          .runCartAnimation(cartViewModelCubit.cartQuantityItems.toString());

    });
  }

  @override
  Widget build(BuildContext context) {
    CartViewModelCubit cartViewModelCubit = context.read<CartViewModelCubit>();


    return AddToCartAnimation(
      cartKey: cartViewModelCubit.cartKey,
      height: 30,
      width: 30,
      opacity: 0.85,
      dragAnimation: const DragToCartAnimationOptions(
        rotation: true,
      ),
      jumpAnimation: const JumpAnimationOptions(),
      createAddToCartAnimation: (runAddToCartAnimation) {
        addToCartAnimation = runAddToCartAnimation;

        // return (GlobalKey) => addToCartAnimation(GlobalKey(cartKey));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SliderImage(
            key: widgetKey,
            imageUrls: widget.product.images ?? [],
          ),
          verticalSpacing(16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'EGP ${widget.product.price}',
                      style: MyFonts.styleBold700_20,
                    ),
                    Row(
                      children: [
                        Text('${AppLocalizations.of(context)!.status}: ', style: MyFonts.styleMedium500_16),
                        Text(AppLocalizations.of(context)!.in_stock, style: MyFonts.styleRegular400_14),
                      ],
                    ),
                  ],
                ),
                verticalSpacing(4.h),
                Text(AppLocalizations.of(context)!.all_prices_include_tax,
                    style: MyFonts.styleRegular400_13.copyWith(
                      color: MyColors.grey,
                    )),
                verticalSpacing(8.h),
                Text(
                  '${widget.product.quantity} ${widget.product.title}',
                  style: MyFonts.styleMedium500_16,
                ),
                verticalSpacing(24.h),
                Text(
                  AppLocalizations.of(context)!.description,
                  style: MyFonts.styleMedium500_16,
                ),
                verticalSpacing(8.h),
                Text(widget.product.description ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: MyFonts.styleRegular400_14),
                verticalSpacing(24.h),
                Text(
                  AppLocalizations.of(context)!.bouquet_include,
                  style: MyFonts.styleMedium500_16,
                ),
                verticalSpacing(8.h),
                Text('${widget.product.title}:${widget.product.quantity}',
                    style: MyFonts.styleRegular400_14),
                verticalSpacing(4.h),
                Text(AppLocalizations.of(context)!.white_wrap, style: MyFonts.styleRegular400_14),
                verticalSpacing(24.h),
                AddCartButton(
                  onTap: () {

                    listClick(widgetKey);
                    final token =  SharedPrefHelper().getString(key: SharedPrefKeys.tokenKey);
                    if (token != null) {
                      context.read<CartViewModelCubit>().doAction(AddToCartAction(widget.product.id));
                    }else{
                      context.pushNamed(AppRoutes.login);
                    }
                  },
                  height: 48.h,
                  showRow: false,
                ),
                verticalSpacing(12.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
