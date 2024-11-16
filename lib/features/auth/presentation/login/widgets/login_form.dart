import 'package:flutter/material.dart';
import 'email_field.dart';
import 'emember_me_and_forgot_password.dart';
import 'password_field.dart';

class LoginForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            EmailField(),
            const SizedBox(height: 30),
            PasswordField(),
            const SizedBox(height: 16),
            RememberMeAndForgotPassword(),
          ],
        ),
      ),
    );
  }
}
