import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/styles/fonts/my_fonts.dart';
import 'package:flowery_e_commerce/features/home/best_seller/presentation/cubit/best_seller_cubit.dart';
import 'package:flowery_e_commerce/features/home/best_seller/presentation/cubit/best_seller_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBestSellerList extends StatefulWidget {
  const CustomBestSellerList({super.key});

  @override
  State<CustomBestSellerList> createState() => CustomBestSellerListState();
}

class CustomBestSellerListState extends State<CustomBestSellerList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: BlocBuilder<BestSellerCubit, BestSellerState>(
        builder: (context, state) {
          if(state is GetBestSellerSuccessState){
            return ListView.builder(
              itemCount: state.bestSeller.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        state.bestSeller[index].imageCover,
                         width: 131.w,
                         height: 151.h,
                      ),
                      SizedBox(height: 8.h,),
                      Text(state.bestSeller[index].slug, style: MyFonts.styleRegular400_12.copyWith(
                          color: MyColors.blackBase,
                        overflow: TextOverflow.clip
                      )),
                      SizedBox(height: 3.h,),
                      Text('${state.bestSeller[index].price}' , style: MyFonts.styleMedium500_14.copyWith(
                          color: MyColors.blackBase)),
                    ],
                  ),
                );
              },
            );
          }else{
            return SizedBox();
          }
        },
      ),
    );
  }
}
