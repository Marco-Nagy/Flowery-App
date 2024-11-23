import 'package:flowery_e_commerce/core/routes/base_routes.dart';
import 'package:flowery_e_commerce/core/utils/screens/under_build_screen.dart';
import 'package:flowery_e_commerce/features/auth/presentation/signup/view_model/signup_view_model_cubit.dart';
import 'package:flowery_e_commerce/features/best_seller/presentation/screens/most_selling_screen.dart';
import 'package:flowery_e_commerce/features/categories/presentation/categories/views/categories_view.dart';
import 'package:flowery_e_commerce/features/home_screen/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di/di.dart';
import '../../features/auth/presentation/login/view/login_view.dart';
import '../../features/auth/presentation/signup/view/signup_view.dart';
import '../../features/generic/presentation/screens/occasion_view.dart';

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
  static const String mostSellingScreen = 'mostSellingScreen';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.login:
        return BaseRoute(
          page: LoginView(),
        );
      case AppRoutes.register:
        return BaseRoute(
          page: BlocProvider(
              create: (context) => getIt.get<SignUpViewModel>(),
              child: const SignUpView()),
        );
      case AppRoutes.homeScreen:
        return BaseRoute(
          page: HomeScreen(),
        );
      case AppRoutes.occasionScreen:
        return BaseRoute(
          page: OccasionView(),
        );
      case AppRoutes.categoriesView:
        return BaseRoute(
          page: CategoriesView(),
        );
        case AppRoutes.mostSellingScreen:
        return BaseRoute(
          page: MostSellingScreen(),
        );

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
