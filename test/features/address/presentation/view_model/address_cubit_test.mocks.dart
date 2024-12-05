// Mocks generated by Mockito 5.4.4 from annotations
// in flowery_e_commerce/test/features/address/presentation/view_model/address_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flowery_e_commerce/core/networking/common/api_result.dart'
    as _i5;
import 'package:flowery_e_commerce/features/address/domain/entities/response/SavedAddressResponseEntity.dart'
    as _i6;
import 'package:flowery_e_commerce/features/address/domain/repository/address_repo.dart'
    as _i2;
import 'package:flowery_e_commerce/features/address/domain/uses_cases/address_use_case.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;

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

class _FakeAddressRepo_0 extends _i1.SmartFake implements _i2.AddressRepo {
  _FakeAddressRepo_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AddressUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockAddressUseCase extends _i1.Mock implements _i3.AddressUseCase {
  MockAddressUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AddressRepo get addressRepo => (super.noSuchMethod(
        Invocation.getter(#addressRepo),
        returnValue: _FakeAddressRepo_0(
          this,
          Invocation.getter(#addressRepo),
        ),
      ) as _i2.AddressRepo);

  @override
  set addressRepo(_i2.AddressRepo? _addressRepo) => super.noSuchMethod(
        Invocation.setter(
          #addressRepo,
          _addressRepo,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Future<
      _i5.DataResult<
          List<_i6.GetSavedAddressesEntity>>> callSavedAddresses() =>
      (super.noSuchMethod(
        Invocation.method(
          #callSavedAddresses,
          [],
        ),
        returnValue: _i4
            .Future<_i5.DataResult<List<_i6.GetSavedAddressesEntity>>>.value(
            _i7.dummyValue<_i5.DataResult<List<_i6.GetSavedAddressesEntity>>>(
          this,
          Invocation.method(
            #callSavedAddresses,
            [],
          ),
        )),
      ) as _i4.Future<_i5.DataResult<List<_i6.GetSavedAddressesEntity>>>);
}
