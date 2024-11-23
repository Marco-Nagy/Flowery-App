// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/networking/api/api_manager.dart' as _i282;
import '../core/networking/common/regestet_context_module.dart' as _i125;
import '../core/networking/network_factory.dart' as _i377;
import '../features/auth/data/data_sources/contracts/auth_online_data_source.dart'
    as _i901;
import '../features/auth/data/data_sources/contracts/offline_data_source.dart'
    as _i345;
import '../features/auth/data/data_sources/impl/auth_offline_data_source_impl.dart'
    as _i1036;
import '../features/auth/data/data_sources/impl/auth_online_data_source_impl.dart'
    as _i326;
import '../features/auth/data/repositories/auth_repo_impl.dart' as _i990;
import '../features/auth/domain/contracts/auth_repo.dart' as _i665;
import '../features/auth/domain/use_cases/forgot_password_use_case.dart'
    as _i301;
import '../features/auth/domain/use_cases/login_use_case.dart' as _i496;
import '../features/auth/domain/use_cases/reset_password_use_case.dart'
    as _i906;
import '../features/auth/domain/use_cases/signup_use_case.dart' as _i853;
import '../features/auth/domain/use_cases/verify_reset_code_use_case.dart'
    as _i642;
import '../features/auth/presentation/forget_password/ViewModel/forget_password_view_model_cubit.dart'
    as _i60;
import '../features/auth/presentation/login/viewModel/login_view_model_cubit.dart'
    as _i690;
import '../features/auth/presentation/signup/view_model/signup_view_model_cubit.dart'
    as _i508;
import '../features/categories/data/data_sources/contracts/categories_online_data_source.dart'
    as _i518;
import '../features/categories/data/data_sources/contracts/products_online_data_source.dart'
    as _i937;
import '../features/categories/data/data_sources/impl/categories_online_data_source_impl.dart'
    as _i1059;
import '../features/categories/data/data_sources/impl/products_online_data_source_impl.dart'
    as _i838;
import '../features/categories/data/repositories/categories_repo_impl.dart'
    as _i620;
import '../features/categories/data/repositories/products_repo_impl.dart'
    as _i160;
import '../features/categories/domain/repositories/categories_repo.dart'
    as _i590;
import '../features/categories/domain/repositories/products_repo.dart' as _i598;
import '../features/categories/domain/use_cases/categories_use_case.dart'
    as _i777;
import '../features/categories/domain/use_cases/products_use_case.dart' as _i98;
import '../features/categories/presentation/categories/viewModel/categories_view_model_cubit.dart'
    as _i80;
import '../features/categories/presentation/products/viewModel/products_view_model_cubit.dart'
    as _i559;
import '../features/generic/data/data_sources/contracts/generic_online_data_source.dart'
    as _i211;
import '../features/generic/data/data_sources/impl/generic_online_data_source_impl.dart'
    as _i854;
import '../features/generic/data/repositories/generic_repo_impl.dart' as _i284;
import '../features/generic/domain/contracts/generic_repo.dart' as _i565;
import '../features/generic/domain/use_cases/generic_use_case.dart' as _i559;
import '../features/generic/presentation/view_model/generic_view_model_cubit.dart'
    as _i1070;
import '../features/home_screen/data/online_data_source/home_api_manager.dart'
    as _i507;
import '../features/home_screen/data/online_data_source/home_online_data_source.dart'
    as _i603;
import '../features/home_screen/data/repository_impl/home_repo_impl.dart'
    as _i178;
import '../features/home_screen/domain/repository/home_repo.dart' as _i765;
import '../features/home_screen/domain/uses_cases/home_use_case.dart' as _i720;
import '../features/home_screen/presentation/home_cubit/best_seller_cubit/best_seller_cubit.dart'
    as _i233;
import '../features/home_screen/presentation/home_cubit/categories_cubit/categories_cubit.dart'
    as _i174;
import '../features/home_screen/presentation/home_cubit/occasions_cubit/occasions_cubit.dart'
    as _i851;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkFactory = _$NetworkFactory();
    final registerModule = _$RegisterModule();
    gh.factory<_i361.LogInterceptor>(
        () => networkFactory.providerInterceptor());
    gh.singleton<_i409.GlobalKey<_i409.NavigatorState>>(
        () => registerModule.navigatorKey);
    gh.lazySingleton<_i361.Dio>(() => networkFactory.provideDio());
    gh.singleton<_i282.ApiManager>(() => _i282.ApiManager(gh<_i361.Dio>()));
    gh.factory<_i901.AuthOnlineDataSource>(
        () => _i326.AuthOnlineDataSourceImpl(gh<_i282.ApiManager>()));
    gh.factory<_i345.OfflineDataSource>(
        () => _i1036.OfflineDataSourceImplementation());
    gh.factory<_i937.ProductsOnlineDataSource>(
        () => _i838.ProductsOnlineDataSourceImpl(gh<_i282.ApiManager>()));
    gh.factory<_i598.ProductsRepo>(
        () => _i160.ProductsRepoImpl(gh<_i937.ProductsOnlineDataSource>()));
    gh.lazySingleton<_i603.HomeOnlineDataSource>(
        () => _i507.HomeApiManager(gh<_i282.ApiManager>()));
    gh.lazySingleton<_i765.HomeRepository>(
        () => _i178.HomeRepoImpl(gh<_i603.HomeOnlineDataSource>()));
    gh.factory<_i211.GenericOnlineDataSource>(
        () => _i854.GenericOnlineDataSourceImpl(gh<_i282.ApiManager>()));
    gh.factory<_i518.CategoriesOnlineDataSource>(() =>
        _i1059.CategoriesOnlineDataSourceImplementation(
            gh<_i282.ApiManager>()));
    gh.factory<_i665.AuthRepository>(
        () => _i990.AuthRepositoryImpl(gh<_i901.AuthOnlineDataSource>()));
    gh.factory<_i720.HomeUseCase>(
        () => _i720.HomeUseCase(gh<_i765.HomeRepository>()));
    gh.factory<_i98.ProductsUseCase>(
        () => _i98.ProductsUseCase(gh<_i598.ProductsRepo>()));
    gh.factory<_i565.GenericRepo>(
        () => _i284.GenericRepositoryImpl(gh<_i211.GenericOnlineDataSource>()));
    gh.factory<_i496.LoginUseCase>(
        () => _i496.LoginUseCase(gh<_i665.AuthRepository>()));
    gh.factory<_i853.SignUpUseCase>(
        () => _i853.SignUpUseCase(gh<_i665.AuthRepository>()));
    gh.factory<_i233.BestSellerCubit>(
        () => _i233.BestSellerCubit(gh<_i720.HomeUseCase>()));
    gh.factory<_i174.CategoriesCubit>(
        () => _i174.CategoriesCubit(gh<_i720.HomeUseCase>()));
    gh.factory<_i851.OccasionsCubit>(
        () => _i851.OccasionsCubit(gh<_i720.HomeUseCase>()));
    gh.factory<_i590.CategoriesRepository>(() =>
        _i620.CategoriesRepositoryImplementation(
            gh<_i518.CategoriesOnlineDataSource>()));

    gh.factory<_i559.ProductsViewModelCubit>(
        () => _i559.ProductsViewModelCubit(gh<_i98.ProductsUseCase>()));
    gh.factory<_i301.ForgotPasswordUseCase>(
        () => _i301.ForgotPasswordUseCase(gh<_i665.AuthRepository>()));
    gh.factory<_i906.ResetPasswordUseCase>(
        () => _i906.ResetPasswordUseCase(gh<_i665.AuthRepository>()));
    gh.factory<_i642.VerifyResetCodeUseCase>(
        () => _i642.VerifyResetCodeUseCase(gh<_i665.AuthRepository>()));


    gh.factory<_i690.LoginViewModel>(
        () => _i690.LoginViewModel(gh<_i496.LoginUseCase>()));
    gh.factory<_i508.SignUpViewModel>(
        () => _i508.SignUpViewModel(gh<_i853.SignUpUseCase>()));
    gh.factory<_i60.ForgetPasswordViewModelCubit>(
        () => _i60.ForgetPasswordViewModelCubit(
              gh<_i301.ForgotPasswordUseCase>(),
              gh<_i642.VerifyResetCodeUseCase>(),
              gh<_i906.ResetPasswordUseCase>(),
            ));
    gh.factory<_i559.GenericUseCase>(
        () => _i559.GenericUseCase(gh<_i565.GenericRepo>()));
    gh.factory<_i777.CategoriesUseCase>(
        () => _i777.CategoriesUseCase(gh<_i590.CategoriesRepository>()));
    gh.factory<_i80.CategoriesViewModelCubit>(
        () => _i80.CategoriesViewModelCubit(gh<_i777.CategoriesUseCase>()));
    gh.factory<_i1070.GenericViewModelCubit>(
        () => _i1070.GenericViewModelCubit(gh<_i559.GenericUseCase>()));
    return this;
  }
}

class _$NetworkFactory extends _i377.NetworkFactory {}

class _$RegisterModule extends _i125.RegisterModule {}
