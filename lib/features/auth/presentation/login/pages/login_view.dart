import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/utils/widgets/app_text_form_field.dart';
import 'package:flowery_e_commerce/core/utils/widgets/base/base_view.dart';
import 'package:flowery_e_commerce/core/utils/widgets/base/custom_app_bar.dart';
import 'package:flowery_e_commerce/core/utils/widgets/spacing.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/widgets/custom_text_form_field.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/widgets/remember_me_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return BaseView(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(appBarTxt: "Login"),
        ),
        SliverToBoxAdapter(
          child: verticalSpacing(30),
        ),
        SliverToBoxAdapter(
            child: CustomTextFormField(
          controller: emailController,
          hintText: "Enter your email",
          labelText: "Email",
        )),
        SliverToBoxAdapter(
          child: verticalSpacing(30),
        ),
        SliverToBoxAdapter(
            child: CustomTextFormField(
          controller: emailController,
          hintText: "Enter your password",
          labelText: "Password",
        )),
        SliverToBoxAdapter(
          child: verticalSpacing(16),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: RememberMeWidget(onChanged: (value) {}),
          ),
        )
      ],
    ));
  }
}
