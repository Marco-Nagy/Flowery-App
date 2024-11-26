import 'package:flowery_e_commerce/core/utils/widgets/base/app_loader.dart';
import 'package:flowery_e_commerce/core/utils/widgets/base/snack_bar.dart';
import 'package:flowery_e_commerce/features/best_seller/presentation/cubit/most_seller_states.dart';
import 'package:flowery_e_commerce/features/best_seller/presentation/cubit/most_selling_cubit.dart';
import 'package:flowery_e_commerce/features/generic/presentation/generic_item_by_product/widget/generic_build_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BuildItem extends StatelessWidget {
  BuildItem({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MostSellerCubit, MostSellerStates>(
      builder: (context, state) {
        switch (state) {
          case GetMostSellerLoadingState():
            return AppLoader();
          case GetMostSellerSuccessState():
            return GridView.builder(
              padding: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                childAspectRatio: 3 / 4,
                mainAxisExtent: 275.h,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.mostSeller.length,
              itemBuilder: (BuildContext context, int index) {
                return GenericBuildItem(
                  imageCover: state.mostSeller[index].imageCover,
                  title: state.mostSeller[index].title,
                  price: state.mostSeller[index].price.toString(),
                  priceAfterDiscount:
                  state.mostSeller[index].priceAfterDiscount.toString(),
                );
              },
            );
          case GetMostSellerErrorState():
            aweSnackBar(
                msg: state.errorModel.error ?? '',
                context: context,
                type: MessageTypeConst.failure);
          case MostSellerInitialState():
        }
        return Container();
      },
    );
  }
}