import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/styles/fonts/my_fonts.dart';
import 'package:flowery_e_commerce/features/profile_main_screen/presentation/widgets/custom_app_bar_of_profile_main_screen.dart';
import 'package:flowery_e_commerce/features/profile_main_screen/presentation/widgets/custom_main_profile_data.dart';
import 'package:flowery_e_commerce/features/profile_main_screen/presentation/widgets/custom_switch_icon.dart';
import 'package:flowery_e_commerce/features/profile_main_screen/presentation/widgets/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMainScreen extends StatefulWidget {
  const ProfileMainScreen({super.key});
  @override
  State<ProfileMainScreen> createState() => _ProfileMainScreenState();
}

class _ProfileMainScreenState extends State<ProfileMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomAppBarOfProfileMainScreen(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomMainProfileData(),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.all(30.sp),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Image.asset(
                      'assets/images/terms_conditions.png',
                    ),
                  ),
                  SizedBox(
                    width: 3.sp,
                  ),
                  Text(
                    'My orders',
                    style: MyFonts.styleRegular400_16.copyWith(
                      color: MyColors.blackBase,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        width: 20.w,
                        height: 20.w,
                        child: Image.asset(
                          'assets/images/drop_down_arrow.png',
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right:30.sp,left: 29.sp),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Image.asset(
                      'assets/images/location.png',
                    ),
                  ),
                  SizedBox(
                    width: 3.sp,
                  ),
                  Text(
                    'Saved address',
                    style: MyFonts.styleRegular400_16.copyWith(
                      color: MyColors.blackBase,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        width: 20.w,
                        height: 20.w,
                        child: Image.asset(
                          'assets/images/drop_down_arrow.png',
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: double.infinity,
              height: 1.h,
              color: MyColors.white70,
            ),
            CustomSwitchIcon(),
            Container(
              width: double.infinity,
              height: 1.h,
              color: MyColors.white70,
            ),
            Container(
              margin: EdgeInsets.all(30.sp),
              height: 150.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 20.w,
                          height: 20.w,
                          child: Image.asset('assets/images/language.png')),
                      SizedBox(width: 5.w,),
                      Text('Language',style: MyFonts.styleRegular400_16.copyWith(
                        color: MyColors.blackBase,
                      ),),
                      Spacer(),
                      InkWell(
                        onTap: (){

                        },
                        child: Text('English',style: MyFonts.styleRegular400_14.copyWith(
                          color: MyColors.baseColor,
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h,),
                  Row(
                    children: [
                      Text('About us',style: MyFonts.styleRegular400_16.copyWith(
                        color: MyColors.blackBase,
                      ),),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                            width: 20.w,
                            height: 20.w,
                            child: Image.asset(
                              'assets/images/drop_down_arrow.png',
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h,),
                  Row(
                    children: [
                      Text('Terms & conditions',style: MyFonts.styleRegular400_16.copyWith(
                        color: MyColors.blackBase,
                      ),),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                            width: 20.w,
                            height: 20.w,
                            child: Image.asset(
                              'assets/images/drop_down_arrow.png',
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Container(
              width: double.infinity,
              height: 1.h,
              color: MyColors.white70,
            ),
            Container(
              margin: EdgeInsets.all(30.sp),
              child: Row(
                children: [
                  SizedBox(
                    width:18.sp,
                      height: 18.sp,
                      child: Image.asset('assets/images/logout_black.png')),
                  SizedBox(width: 5.w,),
                  Text('Logout',style: MyFonts.styleRegular400_16.copyWith(
                    color: MyColors.blackBase,
                  ),),
                  Spacer(),
                  InkWell(
                    onTap: () {
                     ShowLogoutDialog(context);
                    },
                    child: SizedBox(
                        width: 30.w,
                        height: 30.w,
                        child: Image.asset(
                          'assets/images/logout.png',
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Text('v 6.3.0 - (446)',style: MyFonts.styleRegular400_12.copyWith(
              color: MyColors.grey
            ),),
          ],
        ),
      ),
    );
  }
}
