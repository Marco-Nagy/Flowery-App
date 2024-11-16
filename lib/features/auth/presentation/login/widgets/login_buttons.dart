import 'package:flutter/material.dart';
import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/utils/widgets/buttons/carved_button.dart';
import 'package:flowery_e_commerce/features/auth/domain/entities/request/login_request_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/manager/login_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/manager/login_action.dart';

class LoginButtons extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final formKey;

  const LoginButtons({
    Key? key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<LoginViewModel>();

    return SliverToBoxAdapter(
      child: Column(
        children: [
          CurvedButton(
            color: MyColors.primary,
            title: "Login",
            onTap: () {
              if (formKey.currentState!.validate()) {
                viewModel.doAction(LoginAction(LoginRequestEntity(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                )));
              }
            },
          ),
          const SizedBox(height: 16),
          CurvedButton(
            color: MyColors.white,
            title: "Continue as guest",
            onTap: () {},
            colorBorderSide: MyColors.gray,
            textColor: MyColors.gray,
          ),
        ],
      ),
    );
  }
}
