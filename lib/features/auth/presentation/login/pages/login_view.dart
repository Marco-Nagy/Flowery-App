import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/utils/widgets/base/base_view.dart';
import 'package:flowery_e_commerce/core/utils/widgets/base/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(appBarTxt: "Login"),
        )
      ],
    ));
  }
}
