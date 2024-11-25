import 'package:flowery_e_commerce/core/routes/app_routes.dart';
import 'package:flowery_e_commerce/core/utils/extension/navigation.dart';
import 'package:flowery_e_commerce/core/utils/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/styles/colors/my_colors.dart';
import '../../../../../core/utils/validators.dart';
import '../../../../../core/utils/widgets/app_text_form_field.dart';
import '../../../../../core/utils/widgets/buttons/carved_button.dart';
import '../../../../../core/utils/widgets/spacing.dart';
import '../../../domain/entities/request/forget_password_request_entity.dart';
import '../ViewModel/forget_password_base_actions.dart';
import '../ViewModel/forget_password_view_model_cubit.dart';
import '../widgets/screen_description.dart';
import '../widgets/screen_title.dart';
import 'forget_password_bloc_listener.dart';

class ForgetPassword extends HookWidget {
  ForgetPassword({super.key});

  final formKye = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.white,
        appBar: customAppBar(
            appBarTxt: 'Password',
            context: context,
            showArrow: true,
            navigation: () {
              context.pop();
            }),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Form(
              key: formKye,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   ForgetPasswordBlocListener(
                    email: emailController.text.trim(),
                  ),
                  verticalSpacing(40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      children: [
                        const ScreenTitle(
                          title: 'Forget password',
                        ),
                        verticalSpacing(16),
                        const ScreenDescription(
                            title:
                                'Please enter your email associated to your account'),
                      ],
                    ),
                  ),
                  verticalSpacing(32),
                  AppTextFormField(
                    controller: emailController,
                    hintText: 'Enter you email',
                    labelText: 'Email',
                    validator: (value) => Validators.validateNotEmpty(
                        title: 'Email', value: value),
                  ),
                  verticalSpacing(48),
                  CurvedButton(
                    color: MyColors.baseColor,
                    title: 'Continue',
                    onTap: () {
                      if (formKye.currentState!.validate()) {
                        context.read<ForgetPasswordViewModelCubit>().doAction(
                            ForgetPasswordAction(ForgetPasswordRequestEntity(
                                email: emailController.text.trim())));


                        context.pushNamed(AppRoutes.emailVerification,
                            arguments: emailController.text.trim());
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
