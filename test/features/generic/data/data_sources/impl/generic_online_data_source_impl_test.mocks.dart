// Mocks generated by Mockito 5.4.4 from annotations
// in flowery_e_commerce/test/features/generic/data/data_sources/impl/generic_online_data_source_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i20;
import 'dart:io' as _i29;

import 'package:flowery_e_commerce/core/networking/api/api_manager.dart'
    as _i19;
import 'package:flowery_e_commerce/features/auth/data/models/request/forget_password_request_dto.dart'
    as _i23;
import 'package:flowery_e_commerce/features/auth/data/models/request/login_request_dto.dart'
    as _i21;
import 'package:flowery_e_commerce/features/auth/data/models/request/reset_password_request_dto.dart'
    as _i25;
import 'package:flowery_e_commerce/features/auth/data/models/request/signup_request_dto.dart'
    as _i22;
import 'package:flowery_e_commerce/features/auth/data/models/request/verify_reset_code_request_dto.dart'
    as _i24;
import 'package:flowery_e_commerce/features/auth/data/models/response/forget_password_response_dto.dart'
    as _i4;
import 'package:flowery_e_commerce/features/auth/data/models/response/login_response_dto.dart'
    as _i2;
import 'package:flowery_e_commerce/features/auth/data/models/response/reset_password_response_dto.dart'
    as _i6;
import 'package:flowery_e_commerce/features/auth/data/models/response/signup_response_dto.dart'
    as _i3;
import 'package:flowery_e_commerce/features/auth/data/models/response/verify_reset_code_response.dart'
    as _i5;
import 'package:flowery_e_commerce/features/best_seller/data/models/best_seller_response_model_entity.dart'
    as _i11;
import 'package:flowery_e_commerce/features/cart/data/models/request/add_product_to_cart_request_dto.dart'
    as _i26;
import 'package:flowery_e_commerce/features/cart/data/models/request/update_cart_product_quantity_request_dto.dart'
    as _i27;
import 'package:flowery_e_commerce/features/cart/data/models/response/add_to_cart_response_dto.dart'
    as _i14;
import 'package:flowery_e_commerce/features/cart/data/models/response/cart_response_dto.dart'
    as _i15;
import 'package:flowery_e_commerce/features/categories/data/models/response/get_all_categories_response_dto.dart'
    as _i8;
import 'package:flowery_e_commerce/features/categories/data/models/response/get_all_products_rsponse_dto.dart'
    as _i10;
import 'package:flowery_e_commerce/features/generic/data/models/generic_response_dto.dart'
    as _i7;
import 'package:flowery_e_commerce/features/home_screen/data/models/home_response_model_entity.dart'
    as _i9;
import 'package:flowery_e_commerce/features/product/data/models/response/product_response_dto.dart'
    as _i12;
import 'package:flowery_e_commerce/features/profile/data/models/request/change_password_request_dto.dart'
    as _i30;
import 'package:flowery_e_commerce/features/profile/data/models/response/change_password_response_dto.dart'
    as _i18;
import 'package:flowery_e_commerce/features/profile/data/models/response/edit_profile_response_dto.dart'
    as _i16;
import 'package:flowery_e_commerce/features/profile/data/models/response/get_logged_user_data_response_dto.dart'
    as _i13;
import 'package:flowery_e_commerce/features/profile/data/models/response/upload_photo_response_dto.dart'
    as _i17;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i28;

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

class _FakeForgetPasswordResponseDto_2 extends _i1.SmartFake
    implements _i4.ForgetPasswordResponseDto {
  _FakeForgetPasswordResponseDto_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeVerifyResetCodeResponseDto_3 extends _i1.SmartFake
    implements _i5.VerifyResetCodeResponseDto {
  _FakeVerifyResetCodeResponseDto_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResetPasswordResponseDto_4 extends _i1.SmartFake
    implements _i6.ResetPasswordResponseDto {
  _FakeResetPasswordResponseDto_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGenericResponseDto_5 extends _i1.SmartFake
    implements _i7.GenericResponseDto {
  _FakeGenericResponseDto_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetAllCategoriesResponseDto_6 extends _i1.SmartFake
    implements _i8.GetAllCategoriesResponseDto {
  _FakeGetAllCategoriesResponseDto_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHomeResponseModelEntity_7 extends _i1.SmartFake
    implements _i9.HomeResponseModelEntity {
  _FakeHomeResponseModelEntity_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetAllProductsRsponseDto_8 extends _i1.SmartFake
    implements _i10.GetAllProductsRsponseDto {
  _FakeGetAllProductsRsponseDto_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBestSellerResponseModelEntity_9 extends _i1.SmartFake
    implements _i11.BestSellerResponseModelEntity {
  _FakeBestSellerResponseModelEntity_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProductResponseDto_10 extends _i1.SmartFake
    implements _i12.ProductResponseDto {
  _FakeProductResponseDto_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetLoggedUserDataResponseDto_11 extends _i1.SmartFake
    implements _i13.GetLoggedUserDataResponseDto {
  _FakeGetLoggedUserDataResponseDto_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEditProfileResponseDto_12 extends _i1.SmartFake
    implements _i14.EditProfileResponseDto {
  _FakeEditProfileResponseDto_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetLoggedUserDataResponseDto_11 extends _i1.SmartFake
    implements _i13.GetLoggedUserDataResponseDto {
  _FakeGetLoggedUserDataResponseDto_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAddToCartResponseDto_12 extends _i1.SmartFake
    implements _i14.AddToCartResponseDto {
  _FakeAddToCartResponseDto_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCartResponseDto_13 extends _i1.SmartFake
    implements _i15.CartResponseDto {
  _FakeCartResponseDto_13(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEditProfileResponseDto_14 extends _i1.SmartFake
    implements _i16.EditProfileResponseDto {
  _FakeEditProfileResponseDto_14(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUploadPhotoResponseDto_15 extends _i1.SmartFake
    implements _i17.UploadPhotoResponseDto {
  _FakeUploadPhotoResponseDto_15(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeChangePasswordResponseDto_16 extends _i1.SmartFake
    implements _i18.ChangePasswordResponseDto {
  _FakeChangePasswordResponseDto_16(
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
class MockApiManager extends _i1.Mock implements _i19.ApiManager {
  MockApiManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i20.Future<_i2.LoginResponseDto> login(_i21.LoginRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [request],
        ),
        returnValue:
            _i20.Future<_i2.LoginResponseDto>.value(_FakeLoginResponseDto_0(
          this,
          Invocation.method(
            #login,
            [request],
          ),
        )),
      ) as _i20.Future<_i2.LoginResponseDto>);

  @override
  _i20.Future<_i3.SignUpResponseDto> signUp(_i22.SignUpRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [request],
        ),
        returnValue:
            _i20.Future<_i3.SignUpResponseDto>.value(_FakeSignUpResponseDto_1(
          this,
          Invocation.method(
            #signUp,
            [request],
          ),
        )),
      ) as _i20.Future<_i3.SignUpResponseDto>);

  @override
  _i20.Future<_i4.ForgetPasswordResponseDto> forgetPassword(
          _i23.ForgetPasswordRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #forgetPassword,
          [request],
        ),
        returnValue: _i20.Future<_i4.ForgetPasswordResponseDto>.value(
            _FakeForgetPasswordResponseDto_2(
          this,
          Invocation.method(
            #forgetPassword,
            [request],
          ),
        )),
      ) as _i20.Future<_i4.ForgetPasswordResponseDto>);

  @override
  _i20.Future<_i5.VerifyResetCodeResponseDto> verifyResetCode(
          _i24.VerifyResetCodeRequestDto? resetCode) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyResetCode,
          [resetCode],
        ),
        returnValue: _i20.Future<_i5.VerifyResetCodeResponseDto>.value(
            _FakeVerifyResetCodeResponseDto_3(
          this,
          Invocation.method(
            #verifyResetCode,
            [resetCode],
          ),
        )),
      ) as _i20.Future<_i5.VerifyResetCodeResponseDto>);

  @override
  _i20.Future<_i6.ResetPasswordResponseDto> resetPassword(
          _i25.ResetPasswordRequestDto? resetPassword) =>
      (super.noSuchMethod(
        Invocation.method(
          #resetPassword,
          [resetPassword],
        ),
        returnValue: _i20.Future<_i6.ResetPasswordResponseDto>.value(
            _FakeResetPasswordResponseDto_4(
          this,
          Invocation.method(
            #resetPassword,
            [resetPassword],
          ),
        )),
      ) as _i20.Future<_i6.ResetPasswordResponseDto>);

  @override
  _i20.Future<_i7.GenericResponseDto> getGenericProduct(String? resourceName) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGenericProduct,
          [resourceName],
        ),
        returnValue:
            _i20.Future<_i7.GenericResponseDto>.value(_FakeGenericResponseDto_5(
          this,
          Invocation.method(
            #getGenericProduct,
            [resourceName],
          ),
        )),
      ) as _i20.Future<_i7.GenericResponseDto>);

  @override
  _i20.Future<_i8.GetAllCategoriesResponseDto> getAllCategories() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllCategories,
          [],
        ),
        returnValue: _i20.Future<_i8.GetAllCategoriesResponseDto>.value(
            _FakeGetAllCategoriesResponseDto_6(
          this,
          Invocation.method(
            #getAllCategories,
            [],
          ),
        )),
      ) as _i20.Future<_i8.GetAllCategoriesResponseDto>);

  @override
  _i20.Future<_i9.HomeResponseModelEntity> getHome() => (super.noSuchMethod(
        Invocation.method(
          #getHome,
          [],
        ),
        returnValue: _i20.Future<_i9.HomeResponseModelEntity>.value(
            _FakeHomeResponseModelEntity_7(
          this,
          Invocation.method(
            #getHome,
            [],
          ),
        )),
      ) as _i20.Future<_i9.HomeResponseModelEntity>);

  @override
  _i20.Future<_i10.GetAllProductsRsponseDto> getAllProducts() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllProducts,
          [],
        ),
        returnValue: _i20.Future<_i10.GetAllProductsRsponseDto>.value(
            _FakeGetAllProductsRsponseDto_8(
          this,
          Invocation.method(
            #getAllProducts,
            [],
          ),
        )),
      ) as _i20.Future<_i10.GetAllProductsRsponseDto>);

  @override
  _i20.Future<_i11.BestSellerResponseModelEntity> getMostSellingProducts() =>
      (super.noSuchMethod(
        Invocation.method(
          #getMostSellingProducts,
          [],
        ),
        returnValue: _i20.Future<_i11.BestSellerResponseModelEntity>.value(
            _FakeBestSellerResponseModelEntity_9(
          this,
          Invocation.method(
            #getMostSellingProducts,
            [],
          ),
        )),
      ) as _i20.Future<_i11.BestSellerResponseModelEntity>);

  @override
  _i20.Future<_i12.ProductResponseDto> getProduct() => (super.noSuchMethod(
        Invocation.method(
          #getProduct,
          [],
        ),
        returnValue: _i20.Future<_i12.ProductResponseDto>.value(
            _FakeProductResponseDto_10(
          this,
          Invocation.method(
            #getProduct,
            [],
          ),
        )),
      ) as _i20.Future<_i12.ProductResponseDto>);

  @override
  _i20.Future<_i13.GetLoggedUserDataResponseDto> getLoggedUserData() =>
      (super.noSuchMethod(
        Invocation.method(
          #getLoggedUserData,
          [],
        ),
        returnValue: _i20.Future<_i13.GetLoggedUserDataResponseDto>.value(
            _FakeGetLoggedUserDataResponseDto_11(
          this,
          Invocation.method(
            #getLoggedUserData,
            [],
          ),
        )),
      ) as _i20.Future<_i13.GetLoggedUserDataResponseDto>);

  @override
  _i20.Future<_i14.AddToCartResponseDto> addProductToCart(
          _i26.AddProductToCartRequestDto? body) =>
      (super.noSuchMethod(
        Invocation.method(
          #addProductToCart,
          [body],
        ),
        returnValue: _i20.Future<_i14.AddToCartResponseDto>.value(
            _FakeAddToCartResponseDto_12(
          this,
          Invocation.method(
            #addProductToCart,
            [body],
          ),
        )),
      ) as _i20.Future<_i14.AddToCartResponseDto>);

  @override
  _i20.Future<_i15.CartResponseDto> updateCartQuantity(
    String? id,
    _i27.UpdateCartProductQuantityRequestDto? body,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateCartQuantity,
          [
            id,
            body,
          ],
        ),
        returnValue:
            _i20.Future<_i15.CartResponseDto>.value(_FakeCartResponseDto_13(
          this,
          Invocation.method(
            #updateCartQuantity,
            [
              id,
              body,
            ],
          ),
        )),
      ) as _i20.Future<_i15.CartResponseDto>);

  @override
  _i20.Future<_i15.CartResponseDto> removeProductFromCart(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeProductFromCart,
          [id],
        ),
        returnValue:
            _i20.Future<_i15.CartResponseDto>.value(_FakeCartResponseDto_13(
          this,
          Invocation.method(
            #removeProductFromCart,
            [id],
          ),
        )),
      ) as _i20.Future<_i15.CartResponseDto>);

  @override
  _i20.Future<_i15.CartResponseDto> getCartData() => (super.noSuchMethod(
        Invocation.method(
          #getCartData,
          [],
        ),
        returnValue:
            _i20.Future<_i15.CartResponseDto>.value(_FakeCartResponseDto_13(
          this,
          Invocation.method(
            #getCartData,
            [],
          ),
        )),
      ) as _i20.Future<_i15.CartResponseDto>);

  @override
  _i20.Future<String> clearCartItems() => (super.noSuchMethod(
        Invocation.method(
          #clearCartItems,
          [],
        ),
        returnValue: _i20.Future<String>.value(_i28.dummyValue<String>(
          this,
          Invocation.method(
            #clearCartItems,
            [],
          ),
        )),
      ) as _i20.Future<String>);

  @override
  _i20.Future<_i16.EditProfileResponseDto> editProfile(
          Map<String, dynamic>? body) =>
      (super.noSuchMethod(
        Invocation.method(
          #editProfile,
          [body],
        ),
        returnValue: _i20.Future<_i16.EditProfileResponseDto>.value(
            _FakeEditProfileResponseDto_14(
          this,
          Invocation.method(
            #editProfile,
            [body],
          ),
        )),
      ) as _i20.Future<_i16.EditProfileResponseDto>);

  @override
  _i20.Future<_i17.UploadPhotoResponseDto> uploadPhoto(_i29.File? photo) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadPhoto,
          [photo],
        ),
        returnValue: _i20.Future<_i17.UploadPhotoResponseDto>.value(
            _FakeUploadPhotoResponseDto_15(
          this,
          Invocation.method(
            #uploadPhoto,
            [photo],
          ),
        )),
      ) as _i20.Future<_i17.UploadPhotoResponseDto>);

  @override
  _i20.Future<_i18.ChangePasswordResponseDto> changePassword(
          _i30.ChangePasswordRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #changePassword,
          [request],
        ),
        returnValue: _i20.Future<_i18.ChangePasswordResponseDto>.value(
            _FakeChangePasswordResponseDto_16(
          this,
          Invocation.method(
            #changePassword,
            [request],
          ),
        )),
      ) as _i20.Future<_i18.ChangePasswordResponseDto>);
}
