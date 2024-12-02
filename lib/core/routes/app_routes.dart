import 'package:flowery_e_commerce/core/routes/base_routes.dart';
import 'package:flowery_e_commerce/core/utils/screens/under_build_screen.dart';
import 'package:flowery_e_commerce/features/auth/presentation/forget_password/ViewModel/forget_password_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/auth/presentation/forget_password/view/email_verification.dart';
import 'package:flowery_e_commerce/features/auth/presentation/forget_password/view/reset_password.dart';
import 'package:flowery_e_commerce/features/auth/presentation/signup/view_model/signup_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/best_seller/presentation/screens/most_selling_screen.dart';
import 'package:flowery_e_commerce/features/generic/presentation/screens/categories_view.dart';
import 'package:flowery_e_commerce/features/generic/presentation/generic_item_by_product/viewModel/generic_item_action.dart';
import 'package:flowery_e_commerce/features/generic/presentation/generic_item_by_product/viewModel/generic_item_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/home_screen/presentation/home_screen.dart';
import 'package:flowery_e_commerce/features/profile/presentation/views/profile_main_screen.dart';
import 'package:flowery_e_commerce/features/product/presentation/view/product_details_view.dart';
import 'package:flowery_e_commerce/features/product/domain/entities/product_response_entity.dart';
import 'package:flowery_e_commerce/features/product/presentision/view/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di/di.dart';
import '../../features/auth/presentation/forget_password/view/forget_password.dart';
import '../../features/auth/presentation/login/view/login_view.dart';
import '../../features/auth/presentation/signup/view/signup_view.dart';
import '../../features/best_seller/domain/entities/most_selling_entity.dart';
import '../../features/generic/presentation/screens/occasion_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/profile/presentation/views/reset_password_profile_view.dart';

class AppRoutes {
  static const String login = '/';
  static const String register = 'register';
  static const String forgetPassword = 'forgetPassword';
  static const String emailVerification = 'emailVerification';
  static const String resetPassWord = 'resetPassWord';
  static const String changePassWord = 'changePassWord';
  static const String homeScreen = 'homeScreen';
  static const String occasionScreen = 'occasionScreen';
  static const String categoriesView = 'categoriesView';
  static const String productsDetailsView = 'productsDetailsView';
  static const String mostSellingScreen = 'mostSellingScreen';
  static const String profileMainScreen = 'profileMainScreen';

  static const String profileView = "profileView";
  static const String resetPasswordProfileView = 'resetPasswordProfileView';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.login:
        return BaseRoute(
          page: const LoginView(),
        );
      case AppRoutes.register:
        return BaseRoute(
          page: BlocProvider(
              create: (context) => getIt.get<SignUpViewModel>(),
              child: const SignUpView()),
        );
      case AppRoutes.forgetPassword:
        return BaseRoute(
          page: BlocProvider(
              create: (context) => getIt.get<ForgetPasswordViewModelCubit>(),
              child: ForgetPassword()),
        );
      case AppRoutes.emailVerification:
        return BaseRoute(
            page: BlocProvider(
          create: (context) => getIt.get<ForgetPasswordViewModelCubit>(),
          child: EmailVerification(args as String),
        ));

      case AppRoutes.resetPassWord:
        return BaseRoute(
          page: BlocProvider(
              create: (context) => getIt.get<ForgetPasswordViewModelCubit>(),
              child: ResetPassword()),
        );
      case AppRoutes.homeScreen:
        return BaseRoute(
          page: const HomeScreen(),
        );
      case AppRoutes.occasionScreen:
        return BaseRoute(
          page: BlocProvider(
              create: (context) => getIt.get<GenericItemViewModelCubit>()
                ..doAction(GetItemAction(args as String))
                ..doAction(GetProductAction()),child: const OccasionView()),
        );
      case AppRoutes.categoriesView:
        return BaseRoute(
          page: const CategoriesView(),
        );
        case AppRoutes.mostSellingScreen:
        return BaseRoute(
          page:  const MostSellingScreen(),
        );
      case AppRoutes.profileMainScreen:
        return BaseRoute(page: const ProfileMainScreen());
      case AppRoutes.productsDetailsView:
        return BaseRoute(page: ProductDetailsView(
          product: args  as dynamic,

        ));

      case AppRoutes.profileView:
        return BaseRoute(page: const ProfileView());
      case AppRoutes.resetPasswordProfileView:
        return BaseRoute(page: const ResetPasswordProfileView());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
