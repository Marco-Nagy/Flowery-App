import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/styles/fonts/my_fonts.dart';
import 'package:flowery_e_commerce/features/home_screen/presentation/home_cubit/best_seller_cubit/best_seller_cubit.dart';
import 'package:flowery_e_commerce/features/home_screen/presentation/home_cubit/best_seller_cubit/best_seller_states.dart';
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
      height: 270.h,
      child: BlocBuilder<BestSellerCubit, BestSellerStates>(
        builder: (context, state) {
          if(state is GetBestSellerSuccessState){
            return ListView.builder(
              itemCount: state.bestSeller.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(3.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        state.bestSeller[index].imageCover,
                         width: 170.w,
                         height: 180.h,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 8.h,),
                      SizedBox(
                        width: 170.w,
                        child: Text(state.bestSeller[index].title,
                            style: MyFonts.styleRegular400_14.copyWith(
                            color: MyColors.blackBase,
                              overflow: TextOverflow.visible
                            ),
                          maxLines: 2,
                        ),
                      ),
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
