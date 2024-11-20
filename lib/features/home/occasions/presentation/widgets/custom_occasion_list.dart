import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/styles/fonts/my_fonts.dart';
import 'package:flowery_e_commerce/features/home/occasions/presentation/cubit/occasions_cubit.dart';
import 'package:flowery_e_commerce/features/home/occasions/presentation/cubit/occasions_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOccasionList extends StatefulWidget {
  const CustomOccasionList({super.key});

  @override
  State<CustomOccasionList> createState() => CustomOccasionListState();
}

class CustomOccasionListState extends State<CustomOccasionList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: BlocBuilder<OccasionsCubit, OccasionsState>(
        builder: (context, state) {
          if(state is GetOccasionsSuccessState){
            return ListView.builder(
              itemCount: state.occasions.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        state.occasions[index].image,
                        width: 131.w,
                        height: 151.h,
                      ),
                      SizedBox(height: 8.h,),
                      Text(state.occasions[index].name, style: MyFonts.styleMedium500_14.copyWith(
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
