import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/styles/fonts/my_fonts.dart';
import 'package:flutter/material.dart';
import '../views/reset_password_profile_view.dart';

class ChangeText extends StatelessWidget {
  const ChangeText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // // Navigator.pushNamed(context, RoutesName.resetPasswordProfileView);
        //
        // Navigator.of(context).push(PageAnimationTransition(
        //     page: ResetPasswordProfileView(),
        //     pageAnimationType: LeftToRightFadedTransition()));
      },
      child: Text(
        "Change",
        style: MyFonts.styleMedium500_14.copyWith(color: MyColors.baseColor),
      ),
    );
  }
}
