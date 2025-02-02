// Mocks generated by Mockito 5.4.5 from annotations
// in flowery_e_commerce/test/features/profile/domain/use_cases/profile_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;
import 'dart:io' as _i9;

import 'package:flowery_e_commerce/core/networking/common/api_result.dart'
    as _i4;
import 'package:flowery_e_commerce/features/profile/domain/entities/request/change_password_request_entity.dart'
    as _i11;
import 'package:flowery_e_commerce/features/profile/domain/entities/response/change_password_response_entity.dart'
    as _i10;
import 'package:flowery_e_commerce/features/profile/domain/entities/response/edit_profile_response_entity.dart'
    as _i7;
import 'package:flowery_e_commerce/features/profile/domain/entities/response/get_logged_user_data_response_entity.dart'
    as _i5;
import 'package:flowery_e_commerce/features/profile/domain/entities/response/upload_photo_response_entity.dart'
    as _i8;
import 'package:flowery_e_commerce/features/profile/domain/repositories/profile_repo.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [ProfileRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockProfileRepo extends _i1.Mock implements _i2.ProfileRepo {
  MockProfileRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i4.DataResult<_i5.GetLoggedUserDataResponseEntity>>
  getProfileData() =>
      (super.noSuchMethod(
            Invocation.method(#getProfileData, []),
            returnValue: _i3.Future<
              _i4.DataResult<_i5.GetLoggedUserDataResponseEntity>
            >.value(
              _i6.dummyValue<
                _i4.DataResult<_i5.GetLoggedUserDataResponseEntity>
              >(this, Invocation.method(#getProfileData, [])),
            ),
          )
          as _i3.Future<_i4.DataResult<_i5.GetLoggedUserDataResponseEntity>>);

  @override
  _i3.Future<_i4.DataResult<_i7.EditProfileResponseEntity>> editProfile(
    Map<String, dynamic>? profileData,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#editProfile, [profileData]),
            returnValue:
                _i3.Future<_i4.DataResult<_i7.EditProfileResponseEntity>>.value(
                  _i6.dummyValue<_i4.DataResult<_i7.EditProfileResponseEntity>>(
                    this,
                    Invocation.method(#editProfile, [profileData]),
                  ),
                ),
          )
          as _i3.Future<_i4.DataResult<_i7.EditProfileResponseEntity>>);

  @override
  _i3.Future<_i4.DataResult<_i8.UploadPhotoResponseEntity>> uploadPhoto(
    _i9.File? photo,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#uploadPhoto, [photo]),
            returnValue:
                _i3.Future<_i4.DataResult<_i8.UploadPhotoResponseEntity>>.value(
                  _i6.dummyValue<_i4.DataResult<_i8.UploadPhotoResponseEntity>>(
                    this,
                    Invocation.method(#uploadPhoto, [photo]),
                  ),
                ),
          )
          as _i3.Future<_i4.DataResult<_i8.UploadPhotoResponseEntity>>);

  @override
  _i3.Future<_i4.DataResult<_i10.ChangePasswordResponseEntity>> changePassword(
    _i11.ChangePasswordRequestEntity? request,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#changePassword, [request]),
            returnValue: _i3.Future<
              _i4.DataResult<_i10.ChangePasswordResponseEntity>
            >.value(
              _i6.dummyValue<_i4.DataResult<_i10.ChangePasswordResponseEntity>>(
                this,
                Invocation.method(#changePassword, [request]),
              ),
            ),
          )
          as _i3.Future<_i4.DataResult<_i10.ChangePasswordResponseEntity>>);
}
