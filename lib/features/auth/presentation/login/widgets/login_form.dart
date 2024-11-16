import 'package:flutter/material.dart';
import 'email_field.dart';
import 'emember_me_and_forgot_password.dart';
import 'password_field.dart';

class LoginForm extends StatelessWidget {
  final formKey;

  const LoginForm(
      {Key? key,
      required this.formKey,
      required this.emailController,
      required this.passwordController})
      : super(key: key);
  final TextEditingController passwordController;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            EmailField(
              emailController: emailController,
            ),
            const SizedBox(height: 30),
            PasswordField(
              passwordController: passwordController,
            ),
            const SizedBox(height: 16),
            RememberMeAndForgotPassword(),
          ],
        ),
      ),
    );
  }
}
