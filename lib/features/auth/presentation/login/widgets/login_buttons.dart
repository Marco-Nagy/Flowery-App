import 'package:flutter/material.dart';
import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/utils/widgets/buttons/carved_button.dart';
import 'package:flowery_e_commerce/features/auth/domain/entities/request/login_request_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/manager/login_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/manager/login_action.dart';

class LoginButtons extends StatelessWidget {
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
              if (Form.of(context).validate()) {
                viewModel.doAction(LoginAction(LoginRequestEntity(
                  email: "test@example.com",
                  // Replace with your controller's value
                  password:
                      "password123", // Replace with your controller's value
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
