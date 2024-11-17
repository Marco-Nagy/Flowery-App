import 'package:flowery_e_commerce/di/di.dart';
import 'package:flowery_e_commerce/features/auth/presentation/signup/view_model/signup_cubit.dart';
import 'package:flowery_e_commerce/features/auth/presentation/signup/widgets/auth_footer.dart';
import 'package:flowery_e_commerce/features/auth/presentation/signup/widgets/condition_text.dart';
import 'package:flowery_e_commerce/features/auth/presentation/signup/widgets/signup_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/widgets/buttons/carved_button.dart';
import '../../../../../core/utils/widgets/custom_toast.dart';
import '../../../../../core/utils/widgets/spacing.dart';
import 'gender_selection.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignupCubit>(),
      child: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {
            switch (state) {
              case SignupLoading():
                {
                  CustomToast.showLoadingToast(
                      message: "loading...");

                  break;
                }
              case SignupError():
                {
                  CustomToast.showErrorToast(
                      message: state.exception.toString());
                  break;
                }
              case SignupSuccess():
                {
                  CustomToast.showSuccessToast(
                      message: "Sign up successfully");
                  // Navigator.pushNamed(context, RoutesName.homeView);
                  break;
                }
              default:
            }
          },
          builder: (context, state) {
        final cubit = context.read<SignupCubit>();
        return Form(
          key: cubit.signUpFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignupFields(cubit: cubit),
              GenderSelection(cubit: cubit),
              verticalSpacing(
                20,
              ),
              conditionText(),
              verticalSpacing(
                50,
              ),
              CurvedButton(
                title: 'Sign up',
                onTap: () {
                  cubit.doAction(SignupActionSelected());
                },
              ),
              verticalSpacing(
                15,
              ),
              const AuthFooter(
                  question: 'Already have an account?', txt: 'Login')
            ],
          ),
        );
      }),
    );
  }
}
