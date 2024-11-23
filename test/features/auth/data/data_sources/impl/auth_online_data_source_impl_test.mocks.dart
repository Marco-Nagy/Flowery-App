// Mocks generated by Mockito 5.4.4 from annotations
// in flowery_e_commerce/test/features/auth/data/data_sources/impl/auth_online_data_source_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;

import 'package:flowery_e_commerce/core/networking/api/api_manager.dart' as _i8;
import 'package:flowery_e_commerce/features/auth/data/models/request/login_request_dto.dart'
    as _i10;
import 'package:flowery_e_commerce/features/auth/data/models/request/signup_request_dto.dart'
    as _i11;
import 'package:flowery_e_commerce/features/auth/data/models/response/login_response_dto.dart'
    as _i2;
import 'package:flowery_e_commerce/features/auth/data/models/response/signup_response_dto.dart'
    as _i3;
import 'package:flowery_e_commerce/features/best_seller/data/models/best_seller_response_model_entity.dart'
    as _i7;
import 'package:flowery_e_commerce/features/categories/data/models/response/get_all_categories_response_dto.dart'
    as _i5;
import 'package:flowery_e_commerce/features/categories/data/models/response/get_all_products_rsponse_dto.dart'
    as _i6;
import 'package:flowery_e_commerce/features/generic/data/models/generic_response_dto.dart'
    as _i4;
import 'package:flowery_e_commerce/features/home_screen/data/models/home_response_model_entity.dart'
    as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLoginResponseDto_0 extends _i1.SmartFake
    implements _i2.LoginResponseDto {
  _FakeLoginResponseDto_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSignUpResponseDto_1 extends _i1.SmartFake
    implements _i3.SignUpResponseDto {
  _FakeSignUpResponseDto_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGenericResponseDto_2 extends _i1.SmartFake
    implements _i4.GenericResponseDto {
  _FakeGenericResponseDto_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetAllCategoriesResponseDto_3 extends _i1.SmartFake
    implements _i5.GetAllCategoriesResponseDto {
  _FakeGetAllCategoriesResponseDto_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetAllProductsRsponseDto_4 extends _i1.SmartFake
    implements _i6.GetAllProductsRsponseDto {
  _FakeGetAllProductsRsponseDto_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHomeResponseModelEntity_4 extends _i1.SmartFake
    implements _i6.HomeResponseModelEntity {
  _FakeHomeResponseModelEntity_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBestSellerResponseModelEntity_5 extends _i1.SmartFake
    implements _i7.BestSellerResponseModelEntity {
  _FakeBestSellerResponseModelEntity_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ApiManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiManager extends _i1.Mock implements _i8.ApiManager {
  MockApiManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.LoginResponseDto> login(_i10.LoginRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [request],
        ),
        returnValue:
            _i9.Future<_i2.LoginResponseDto>.value(_FakeLoginResponseDto_0(
          this,
          Invocation.method(
            #login,
            [request],
          ),
        )),
      ) as _i9.Future<_i2.LoginResponseDto>);

  @override
  _i9.Future<_i3.SignUpResponseDto> signUp(_i11.SignUpRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [request],
        ),
        returnValue:
            _i9.Future<_i3.SignUpResponseDto>.value(_FakeSignUpResponseDto_1(
          this,
          Invocation.method(
            #signUp,
            [request],
          ),
        )),
      ) as _i9.Future<_i3.SignUpResponseDto>);

  @override
  _i9.Future<_i4.GenericResponseDto> getGenericProduct(String? resourceName) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGenericProduct,
          [resourceName],
        ),
        returnValue:
            _i9.Future<_i4.GenericResponseDto>.value(_FakeGenericResponseDto_2(
          this,
          Invocation.method(
            #getGenericProduct,
            [resourceName],
          ),
        )),
      ) as _i9.Future<_i4.GenericResponseDto>);

  @override
  _i9.Future<_i5.GetAllCategoriesResponseDto> getAllCategories() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllCategories,
          [],
        ),
        returnValue: _i9.Future<_i5.GetAllCategoriesResponseDto>.value(
            _FakeGetAllCategoriesResponseDto_3(
          this,
          Invocation.method(
            #getAllCategories,
            [],
          ),
        )),
      ) as _i9.Future<_i5.GetAllCategoriesResponseDto>);

  @override
  _i8.Future<_i6.GetAllProductsRsponseDto> getAllProducts() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllProducts,
          [],
        ),
        returnValue: _i8.Future<_i6.GetAllProductsRsponseDto>.value(
            _FakeGetAllProductsRsponseDto_4(
          this,
          Invocation.method(
            #getAllProducts,
            [],
          ),
        )),
      ) as _i8.Future<_i6.GetAllProductsRsponseDto>);


  @override
  _i9.Future<_i6.HomeResponseModelEntity> getHome() => (super.noSuchMethod(
        Invocation.method(
          #getHome,
          [],
        ),
        returnValue: _i9.Future<_i6.HomeResponseModelEntity>.value(
            _FakeHomeResponseModelEntity_4(
          this,
          Invocation.method(
            #getHome,
            [],
          ),
        )),
      ) as _i9.Future<_i6.HomeResponseModelEntity>);

  @override
  _i9.Future<_i7.BestSellerResponseModelEntity> getMostSellingProducts() =>
      (super.noSuchMethod(
        Invocation.method(
          #getMostSellingProducts,
          [],
        ),
        returnValue: _i9.Future<_i7.BestSellerResponseModelEntity>.value(
            _FakeBestSellerResponseModelEntity_5(
          this,
          Invocation.method(
            #getMostSellingProducts,
            [],
          ),
        )),
      ) as _i9.Future<_i7.BestSellerResponseModelEntity>);
}
