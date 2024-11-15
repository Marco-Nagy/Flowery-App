import 'package:flowery_e_commerce/core/styles/colors/my_colors.dart';
import 'package:flowery_e_commerce/core/styles/fonts/my_fonts.dart';
import 'package:flowery_e_commerce/core/utils/widgets/base/base_view.dart';
import 'package:flowery_e_commerce/core/utils/widgets/base/custom_app_bar.dart';
import 'package:flowery_e_commerce/core/utils/widgets/buttons/carved_button.dart';
import 'package:flowery_e_commerce/core/utils/widgets/spacing.dart';
import 'package:flowery_e_commerce/di/di.dart';
import 'package:flowery_e_commerce/features/auth/domain/entities/request/login_request_entity.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/manager/login_action.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/manager/login_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/widgets/custom_text_form_field.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/widgets/remember_me_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late LoginViewModel viewModel;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    viewModel = getIt.get<LoginViewModel>();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginViewModel>(
      create: (context) => viewModel,
      child: BaseView(
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
          )),
          SliverToBoxAdapter(
            child: verticalSpacing(70),
          ),
          BlocBuilder<LoginViewModel, LoginViewModelState>(
              builder: (context, state) {
            return SliverToBoxAdapter(
                child: CurvedButton(
              color: MyColors.primary,
              title: "Login",
              onTap: () {
                viewModel.doAction(LoginAction(LoginRequestEntity(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim())));
              },
            ));
          }),
          SliverToBoxAdapter(
            child: verticalSpacing(16),
          ),
          SliverToBoxAdapter(
              child: CurvedButton(
            color: MyColors.white,
            title: "Continue as guest",
            onTap: () {},
            colorBorderSide: MyColors.gray,
            textColor: MyColors.gray,
          )),
        ],
      )),
    );
  }
}
