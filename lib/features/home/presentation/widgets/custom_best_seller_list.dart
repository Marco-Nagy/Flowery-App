


import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flutter/material.dart';
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
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/image.png',
                  // width: 35.w,
                  // height: 35.h,
                ),
                SizedBox(height: 8.h,),
                Text('Sunny',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: MyColors.blackBase,
                  fontSize: 12.sp,
                ),),
                SizedBox(height: 3.h,),
                Text('600 EGP',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: MyColors.blackBase,
                  fontSize: 14.sp,
                ),),
              ],
            ),
          );
        },
      ),
    );
  }
}
