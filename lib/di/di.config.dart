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
import '../features/auth/domain/use_cases/login_use_case.dart' as _i496;
import '../features/auth/domain/use_cases/signup_use_case.dart' as _i853;
import '../features/auth/presentation/login/viewModel/login_view_model_cubit.dart'
    as _i690;
import '../features/auth/presentation/signup/view_model/signup_view_model_cubit.dart'
    as _i508;
import '../features/home/best_seller/data/online_data_source/best_seller_api_manager.dart'
    as _i881;
import '../features/home/best_seller/data/online_data_source/best_seller_online_data_source.dart'
    as _i583;
import '../features/home/best_seller/data/repositories/best_seller_repository_impl.dart'
    as _i150;
import '../features/home/best_seller/domain/best_seller_repository/best_seller_repo.dart'
    as _i829;
import '../features/home/best_seller/domain/use_cases/best_seller_use_case.dart'
    as _i61;
import '../features/home/best_seller/presentation/cubit/best_seller_cubit.dart'
    as _i799;
import '../features/home/catogeries/data/data_source/online_data_source/get_categories_api_manager.dart'
    as _i47;
import '../features/home/catogeries/data/data_source/online_data_source/get_categories_online_data_source.dart'
    as _i548;
import '../features/home/catogeries/data/repositories/get_categories_repo_impl.dart'
    as _i787;
import '../features/home/catogeries/domain/repositories/get_categories_repository.dart'
    as _i200;
import '../features/home/catogeries/domain/use_cases/get_categories_use_case.dart'
    as _i943;
import '../features/home/catogeries/presentation/cubit/categories_cubit.dart'
    as _i949;
import '../features/home/occasions/data/online_data_source/occasions_api_manager.dart'
    as _i718;
import '../features/home/occasions/data/online_data_source/occasions_online_data_source.dart'
    as _i624;
import '../features/home/occasions/data/repository/occasions_repo_impl.dart'
    as _i606;
import '../features/home/occasions/domain/repository/occasions_repo.dart'
    as _i779;
import '../features/home/occasions/domain/uses_cases/occasions_use_case.dart'
    as _i1010;
import '../features/home/occasions/presentation/cubit/occasions_cubit.dart'
    as _i568;

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
    gh.lazySingleton<_i624.OccasionsOnlineDataSource>(
        () => _i718.OccasionsApiManager(gh<_i282.ApiManager>()));
    gh.lazySingleton<_i583.BestSellerOnlineDataSource>(
        () => _i881.BestSellerApiManager(gh<_i282.ApiManager>()));
    gh.lazySingleton<_i548.GetCategoriesOnlineDataSource>(
        () => _i47.CategoriesApiManager(gh<_i282.ApiManager>()));
    gh.factory<_i665.AuthRepository>(
        () => _i990.AuthRepositoryImpl(gh<_i901.AuthOnlineDataSource>()));
    gh.lazySingleton<_i779.OccasionsRepository>(
        () => _i606.OccasionsRepoImpl(gh<_i624.OccasionsOnlineDataSource>()));
    gh.lazySingleton<_i829.BestSellerRepository>(() =>
        _i150.BestSellerRepositoryImpl(gh<_i583.BestSellerOnlineDataSource>()));
    gh.lazySingleton<_i200.GetCategoriesRepository>(() =>
        _i787.GetCategoriesRepoImpl(gh<_i548.GetCategoriesOnlineDataSource>()));
    gh.factory<_i496.LoginUseCase>(
        () => _i496.LoginUseCase(gh<_i665.AuthRepository>()));
    gh.factory<_i853.SignUpUseCase>(
        () => _i853.SignUpUseCase(gh<_i665.AuthRepository>()));
    gh.factory<_i61.BestSellerUseCase>(
        () => _i61.BestSellerUseCase(gh<_i829.BestSellerRepository>()));
    gh.factory<_i1010.OccasionsUseCase>(
        () => _i1010.OccasionsUseCase(gh<_i779.OccasionsRepository>()));
    gh.factory<_i799.BestSellerCubit>(
        () => _i799.BestSellerCubit(gh<_i61.BestSellerUseCase>()));
    gh.factory<_i690.LoginViewModel>(
        () => _i690.LoginViewModel(gh<_i496.LoginUseCase>()));
    gh.factory<_i508.SignUpViewModel>(
        () => _i508.SignUpViewModel(gh<_i853.SignUpUseCase>()));
    gh.factory<_i943.GetCategoriesUseCase>(
        () => _i943.GetCategoriesUseCase(gh<_i200.GetCategoriesRepository>()));
    gh.factory<_i949.CategoriesCubit>(
        () => _i949.CategoriesCubit(gh<_i943.GetCategoriesUseCase>()));
    gh.factory<_i568.OccasionsCubit>(
        () => _i568.OccasionsCubit(gh<_i1010.OccasionsUseCase>()));
    return this;
  }
}

class _$NetworkFactory extends _i377.NetworkFactory {}

class _$RegisterModule extends _i125.RegisterModule {}
