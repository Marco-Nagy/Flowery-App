// Mocks generated by Mockito 5.4.4 from annotations
// in flowery_e_commerce/test/features/generic/data/data_sources/impl/generic_online_data_source_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i23;
import 'dart:io' as _i32;

import 'package:flowery_e_commerce/core/networking/api/api_manager.dart'
    as _i22;
import 'package:flowery_e_commerce/features/address/data/models/response/saved_address_response_entity_dto_entity.dart'
    as _i15;
import 'package:flowery_e_commerce/features/address_details/data/models/request/add_address_request_dto.dart'
    as _i34;
import 'package:flowery_e_commerce/features/address_details/data/models/response/add_address_response_dto.dart'
    as _i19;
import 'package:flowery_e_commerce/features/auth/data/models/request/forget_password_request_dto.dart'
    as _i26;
import 'package:flowery_e_commerce/features/auth/data/models/request/login_request_dto.dart'
    as _i24;
import 'package:flowery_e_commerce/features/auth/data/models/request/reset_password_request_dto.dart'
    as _i28;
import 'package:flowery_e_commerce/features/auth/data/models/request/signup_request_dto.dart'
    as _i25;
import 'package:flowery_e_commerce/features/auth/data/models/request/verify_reset_code_request_dto.dart'
    as _i27;
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
    as _i10;
import 'package:flowery_e_commerce/features/cart/data/models/request/add_product_to_cart_request_dto.dart'
    as _i29;
import 'package:flowery_e_commerce/features/cart/data/models/request/update_cart_product_quantity_request_dto.dart'
    as _i30;
import 'package:flowery_e_commerce/features/cart/data/models/response/add_to_cart_response_dto.dart'
    as _i13;
import 'package:flowery_e_commerce/features/cart/data/models/response/cart_response_dto.dart'
    as _i14;
import 'package:flowery_e_commerce/features/categories/data/models/response/get_all_categories_response_dto.dart'
    as _i8;
import 'package:flowery_e_commerce/features/checkout/data/models/request/shipping_address_request_dto.dart'
    as _i35;
import 'package:flowery_e_commerce/features/checkout/data/models/response/cash_orders_response_dto.dart'
    as _i21;
import 'package:flowery_e_commerce/features/checkout/data/models/response/checkout_orders_response_dto.dart'
    as _i20;
import 'package:flowery_e_commerce/features/generic/data/models/generic_response_dto.dart'
    as _i7;
import 'package:flowery_e_commerce/features/home_screen/data/models/home_response_model_entity.dart'
    as _i9;
import 'package:flowery_e_commerce/features/product/data/models/response/product_response_dto.dart'
    as _i11;
import 'package:flowery_e_commerce/features/profile/data/models/request/change_password_request_dto.dart'
    as _i33;
import 'package:flowery_e_commerce/features/profile/data/models/response/change_password_response_dto.dart'
    as _i18;
import 'package:flowery_e_commerce/features/profile/data/models/response/edit_profile_response_dto.dart'
    as _i16;
import 'package:flowery_e_commerce/features/profile/data/models/response/get_logged_user_data_response_dto.dart'
    as _i12;
import 'package:flowery_e_commerce/features/profile/data/models/response/upload_photo_response_dto.dart'
    as _i17;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i31;

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

class _FakeBestSellerResponseModelEntity_8 extends _i1.SmartFake
    implements _i10.BestSellerResponseModelEntity {
  _FakeBestSellerResponseModelEntity_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProductResponseDto_9 extends _i1.SmartFake
    implements _i11.ProductResponseDto {
  _FakeProductResponseDto_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetLoggedUserDataResponseDto_10 extends _i1.SmartFake
    implements _i12.GetLoggedUserDataResponseDto {
  _FakeGetLoggedUserDataResponseDto_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAddToCartResponseDto_11 extends _i1.SmartFake
    implements _i13.AddToCartResponseDto {
  _FakeAddToCartResponseDto_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCartResponseDto_12 extends _i1.SmartFake
    implements _i14.CartResponseDto {
  _FakeCartResponseDto_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSavedAddressResponseEntityDtoEntity_13 extends _i1.SmartFake
    implements _i15.SavedAddressResponseEntityDtoEntity {
  _FakeSavedAddressResponseEntityDtoEntity_13(
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

class _FakeAddAddressResponseDto_17 extends _i1.SmartFake
    implements _i19.AddAddressResponseDto {
  _FakeAddAddressResponseDto_17(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCheckoutOrdersResponseDto_18 extends _i1.SmartFake
    implements _i20.CheckoutOrdersResponseDto {
  _FakeCheckoutOrdersResponseDto_18(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCashOrdersResponseDto_19 extends _i1.SmartFake
    implements _i21.CashOrdersResponseDto {
  _FakeCashOrdersResponseDto_19(
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
class MockApiManager extends _i1.Mock implements _i22.ApiManager {
  MockApiManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i23.Future<_i2.LoginResponseDto> login(_i24.LoginRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [request],
        ),
        returnValue:
            _i23.Future<_i2.LoginResponseDto>.value(_FakeLoginResponseDto_0(
          this,
          Invocation.method(
            #login,
            [request],
          ),
        )),
      ) as _i23.Future<_i2.LoginResponseDto>);

  @override
  _i23.Future<_i3.SignUpResponseDto> signUp(_i25.SignUpRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [request],
        ),
        returnValue:
            _i23.Future<_i3.SignUpResponseDto>.value(_FakeSignUpResponseDto_1(
          this,
          Invocation.method(
            #signUp,
            [request],
          ),
        )),
      ) as _i23.Future<_i3.SignUpResponseDto>);

  @override
  _i23.Future<_i4.ForgetPasswordResponseDto> forgetPassword(
          _i26.ForgetPasswordRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #forgetPassword,
          [request],
        ),
        returnValue: _i23.Future<_i4.ForgetPasswordResponseDto>.value(
            _FakeForgetPasswordResponseDto_2(
          this,
          Invocation.method(
            #forgetPassword,
            [request],
          ),
        )),
      ) as _i23.Future<_i4.ForgetPasswordResponseDto>);

  @override
  _i23.Future<_i5.VerifyResetCodeResponseDto> verifyResetCode(
          _i27.VerifyResetCodeRequestDto? resetCode) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyResetCode,
          [resetCode],
        ),
        returnValue: _i23.Future<_i5.VerifyResetCodeResponseDto>.value(
            _FakeVerifyResetCodeResponseDto_3(
          this,
          Invocation.method(
            #verifyResetCode,
            [resetCode],
          ),
        )),
      ) as _i23.Future<_i5.VerifyResetCodeResponseDto>);

  @override
  _i23.Future<_i6.ResetPasswordResponseDto> resetPassword(
          _i28.ResetPasswordRequestDto? resetPassword) =>
      (super.noSuchMethod(
        Invocation.method(
          #resetPassword,
          [resetPassword],
        ),
        returnValue: _i23.Future<_i6.ResetPasswordResponseDto>.value(
            _FakeResetPasswordResponseDto_4(
          this,
          Invocation.method(
            #resetPassword,
            [resetPassword],
          ),
        )),
      ) as _i23.Future<_i6.ResetPasswordResponseDto>);

  @override
  _i23.Future<_i7.GenericResponseDto> getGenericProduct(String? resourceName) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGenericProduct,
          [resourceName],
        ),
        returnValue:
            _i23.Future<_i7.GenericResponseDto>.value(_FakeGenericResponseDto_5(
          this,
          Invocation.method(
            #getGenericProduct,
            [resourceName],
          ),
        )),
      ) as _i23.Future<_i7.GenericResponseDto>);

  @override
  _i23.Future<_i8.GetAllCategoriesResponseDto> getAllCategories() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllCategories,
          [],
        ),
        returnValue: _i23.Future<_i8.GetAllCategoriesResponseDto>.value(
            _FakeGetAllCategoriesResponseDto_6(
          this,
          Invocation.method(
            #getAllCategories,
            [],
          ),
        )),
      ) as _i23.Future<_i8.GetAllCategoriesResponseDto>);

  @override
  _i23.Future<_i9.HomeResponseModelEntity> getHome() => (super.noSuchMethod(
        Invocation.method(
          #getHome,
          [],
        ),
        returnValue: _i23.Future<_i9.HomeResponseModelEntity>.value(
            _FakeHomeResponseModelEntity_7(
          this,
          Invocation.method(
            #getHome,
            [],
          ),
        )),
      ) as _i23.Future<_i9.HomeResponseModelEntity>);

  @override
  _i23.Future<_i10.BestSellerResponseModelEntity> getMostSellingProducts() =>
      (super.noSuchMethod(
        Invocation.method(
          #getMostSellingProducts,
          [],
        ),
        returnValue: _i23.Future<_i10.BestSellerResponseModelEntity>.value(
            _FakeBestSellerResponseModelEntity_8(
          this,
          Invocation.method(
            #getMostSellingProducts,
            [],
          ),
        )),
      ) as _i23.Future<_i10.BestSellerResponseModelEntity>);

  @override
  _i23.Future<_i11.ProductResponseDto> getProduct({String? keyword}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProduct,
          [],
          {#keyword: keyword},
        ),
        returnValue: _i23.Future<_i11.ProductResponseDto>.value(
            _FakeProductResponseDto_9(
          this,
          Invocation.method(
            #getProduct,
            [],
            {#keyword: keyword},
          ),
        )),
      ) as _i23.Future<_i11.ProductResponseDto>);

  @override
  _i23.Future<_i12.GetLoggedUserDataResponseDto> getLoggedUserData() =>
      (super.noSuchMethod(
        Invocation.method(
          #getLoggedUserData,
          [],
        ),
        returnValue: _i23.Future<_i12.GetLoggedUserDataResponseDto>.value(
            _FakeGetLoggedUserDataResponseDto_10(
          this,
          Invocation.method(
            #getLoggedUserData,
            [],
          ),
        )),
      ) as _i23.Future<_i12.GetLoggedUserDataResponseDto>);

  @override
  _i23.Future<_i13.AddToCartResponseDto> addProductToCart(
          _i29.AddProductToCartRequestDto? body) =>
      (super.noSuchMethod(
        Invocation.method(
          #addProductToCart,
          [body],
        ),
        returnValue: _i23.Future<_i13.AddToCartResponseDto>.value(
            _FakeAddToCartResponseDto_11(
          this,
          Invocation.method(
            #addProductToCart,
            [body],
          ),
        )),
      ) as _i23.Future<_i13.AddToCartResponseDto>);

  @override
  _i23.Future<_i14.CartResponseDto> updateCartQuantity(
    String? id,
    _i30.UpdateCartProductQuantityRequestDto? body,
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
            _i23.Future<_i14.CartResponseDto>.value(_FakeCartResponseDto_12(
          this,
          Invocation.method(
            #updateCartQuantity,
            [
              id,
              body,
            ],
          ),
        )),
      ) as _i23.Future<_i14.CartResponseDto>);

  @override
  _i23.Future<_i14.CartResponseDto> removeProductFromCart(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeProductFromCart,
          [id],
        ),
        returnValue:
            _i23.Future<_i14.CartResponseDto>.value(_FakeCartResponseDto_12(
          this,
          Invocation.method(
            #removeProductFromCart,
            [id],
          ),
        )),
      ) as _i23.Future<_i14.CartResponseDto>);

  @override
  _i23.Future<_i14.CartResponseDto> getCartData() => (super.noSuchMethod(
        Invocation.method(
          #getCartData,
          [],
        ),
        returnValue:
            _i23.Future<_i14.CartResponseDto>.value(_FakeCartResponseDto_12(
          this,
          Invocation.method(
            #getCartData,
            [],
          ),
        )),
      ) as _i23.Future<_i14.CartResponseDto>);

  @override
  _i23.Future<_i15.SavedAddressResponseEntityDtoEntity> getSavedAddresses() =>
      (super.noSuchMethod(
        Invocation.method(
          #getSavedAddresses,
          [],
        ),
        returnValue:
            _i23.Future<_i15.SavedAddressResponseEntityDtoEntity>.value(
                _FakeSavedAddressResponseEntityDtoEntity_13(
          this,
          Invocation.method(
            #getSavedAddresses,
            [],
          ),
        )),
      ) as _i23.Future<_i15.SavedAddressResponseEntityDtoEntity>);

  @override
  _i23.Future<String> clearCartItems() => (super.noSuchMethod(
        Invocation.method(
          #clearCartItems,
          [],
        ),
        returnValue: _i23.Future<String>.value(_i31.dummyValue<String>(
          this,
          Invocation.method(
            #clearCartItems,
            [],
          ),
        )),
      ) as _i23.Future<String>);

  @override
  _i23.Future<_i16.EditProfileResponseDto> editProfile(
          Map<String, dynamic>? body) =>
      (super.noSuchMethod(
        Invocation.method(
          #editProfile,
          [body],
        ),
        returnValue: _i23.Future<_i16.EditProfileResponseDto>.value(
            _FakeEditProfileResponseDto_14(
          this,
          Invocation.method(
            #editProfile,
            [body],
          ),
        )),
      ) as _i23.Future<_i16.EditProfileResponseDto>);

  @override
  _i23.Future<_i17.UploadPhotoResponseDto> uploadPhoto(_i32.File? photo) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadPhoto,
          [photo],
        ),
        returnValue: _i23.Future<_i17.UploadPhotoResponseDto>.value(
            _FakeUploadPhotoResponseDto_15(
          this,
          Invocation.method(
            #uploadPhoto,
            [photo],
          ),
        )),
      ) as _i23.Future<_i17.UploadPhotoResponseDto>);

  @override
  _i23.Future<_i18.ChangePasswordResponseDto> changePassword(
          _i33.ChangePasswordRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #changePassword,
          [request],
        ),
        returnValue: _i23.Future<_i18.ChangePasswordResponseDto>.value(
            _FakeChangePasswordResponseDto_16(
          this,
          Invocation.method(
            #changePassword,
            [request],
          ),
        )),
      ) as _i23.Future<_i18.ChangePasswordResponseDto>);

  @override
  _i23.Future<_i19.AddAddressResponseDto> addAddress(
          _i34.AddAddressRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #addAddress,
          [request],
        ),
        returnValue: _i23.Future<_i19.AddAddressResponseDto>.value(
            _FakeAddAddressResponseDto_17(
          this,
          Invocation.method(
            #addAddress,
            [request],
          ),
        )),
      ) as _i23.Future<_i19.AddAddressResponseDto>);

  @override
  _i23.Future<_i20.CheckoutOrdersResponseDto> checkoutOrders(
    String? endpointUrl,
    _i35.ShippingAddressRequestDto? request,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkoutOrders,
          [
            endpointUrl,
            request,
          ],
        ),
        returnValue: _i23.Future<_i20.CheckoutOrdersResponseDto>.value(
            _FakeCheckoutOrdersResponseDto_18(
          this,
          Invocation.method(
            #checkoutOrders,
            [
              endpointUrl,
              request,
            ],
          ),
        )),
      ) as _i23.Future<_i20.CheckoutOrdersResponseDto>);

  @override
  _i23.Future<_i21.CashOrdersResponseDto> cashOrders(
          _i35.ShippingAddressRequestDto? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #cashOrders,
          [request],
        ),
        returnValue: _i23.Future<_i21.CashOrdersResponseDto>.value(
            _FakeCashOrdersResponseDto_19(
          this,
          Invocation.method(
            #cashOrders,
            [request],
          ),
        )),
      ) as _i23.Future<_i21.CashOrdersResponseDto>);
}
