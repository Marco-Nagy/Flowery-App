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
import '../features/auth/data/datasources/contracts/auth_online_datasource.dart'
    as _i851;
import '../features/auth/data/datasources/implementation/auth_online_datasource_impl.dart'
    as _i321;
import '../features/auth/data/repositories/auth_repo_impl.dart' as _i990;
import '../features/auth/domain/contracts/repo/auth_repo.dart' as _i843;
import '../features/auth/domain/usecase/auth_usecase.dart' as _i610;
import '../features/auth/presentation/signup/view_model/signup_cubit.dart'
    as _i474;

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
    gh.factory<_i851.AuthOnlineDatasource>(() =>
        _i321.AuthOnlineDataSourceImpl(apiManager: gh<_i282.ApiManager>()));
    gh.factory<_i843.AuthRepo>(
        () => _i990.AuthRepositoryImpl(gh<_i851.AuthOnlineDatasource>()));
    gh.factory<_i610.AuthUseCase>(
        () => _i610.AuthUseCase(gh<_i843.AuthRepo>()));
    gh.factory<_i474.SignupCubit>(
        () => _i474.SignupCubit(gh<_i610.AuthUseCase>()));
    return this;
  }
}

class _$NetworkFactory extends _i377.NetworkFactory {}

class _$RegisterModule extends _i125.RegisterModule {}
