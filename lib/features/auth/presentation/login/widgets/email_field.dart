import 'package:flutter/material.dart';
import 'package:flowery_e_commerce/core/utils/validators.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/widgets/custom_text_form_field.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      validator: (value) => Validators.validateEmail(value),
      hintText: "Enter your email",
      labelText: "Email",
    );
  }
}
