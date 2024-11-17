import 'package:flutter/material.dart';
import 'package:flowery_e_commerce/core/styles/fonts/my_fonts.dart';
import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/widgets/remember_me_widget.dart';

class RememberMeAndForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RememberMeWidget(onChanged: (value) {}),
          Text(
            'Forget Password?',
            style: MyFonts.styleRegular400_12.copyWith(
              color: MyColors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
