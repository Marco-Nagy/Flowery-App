import 'package:flowery_e_commerce/core/utils/widgets/base/custom_app_bar.dart';
import 'package:flowery_e_commerce/core/utils/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flowery_e_commerce/core/utils/widgets/base/base_view.dart';
import 'package:flowery_e_commerce/core/utils/widgets/custom_toast.dart';
import 'package:flowery_e_commerce/di/di.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/manager/login_view_model_cubit.dart';
import '../widgets/login_buttons.dart';
import '../widgets/login_form.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginViewModel viewModel;

  @override
  void initState() {
    viewModel = getIt.get<LoginViewModel>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginViewModel>(
      create: (context) => viewModel,
      child: BlocConsumer<LoginViewModel, LoginViewModelState>(
        buildWhen: (previous, current) => current is LoginViewModelInitial,
        builder: (context, state) {
          return BaseView(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomAppBar(appBarTxt: "Login"),
                ),
                SliverToBoxAdapter(
                  child: verticalSpacing(20),
                ),
                LoginForm(),
                SliverToBoxAdapter(
                  child: verticalSpacing(70),
                ),
                LoginButtons(),
              ],
            ),
          );
        },
        listener: (context, state) {
          switch (state) {
            case LoginViewModelLoading():
              CustomToast.showLoadingToast(message: "Loading...");
              break;
            case LoginViewModelSuccess():
              CustomToast.showSuccessToast(message: "Success");
              break;
            case LoginViewModelError():
              debugPrint(state.errorMessage.error);
              CustomToast.showErrorToast(message: state.errorMessage.error!);
              break;
            default:
          }
        },
      ),
    );
  }
}
