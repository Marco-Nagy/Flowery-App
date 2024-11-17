import 'package:flutter/material.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/widgets/email_field.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/widgets/password_field.dart';
import 'emember_me_and_forgot_password.dart';

class LoginForm extends StatefulWidget {
  final formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final void Function(bool) onRememberMeChanged;

  const LoginForm({
    Key? key,
    required this.onRememberMeChanged,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            EmailField(emailController: widget.emailController),
            const SizedBox(height: 30),
            PasswordField(passwordController: widget.passwordController),
            const SizedBox(height: 16),
            RememberMeAndForgotPassword(
              onRememberMeChanged: widget.onRememberMeChanged,
            ),
          ],
        ),
      ),
    );
  }
}
