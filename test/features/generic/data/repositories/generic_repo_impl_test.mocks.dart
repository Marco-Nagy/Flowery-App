// Mocks generated by Mockito 5.4.5 from annotations
// in flowery_e_commerce/test/features/generic/data/repositories/generic_repo_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:flowery_e_commerce/core/networking/common/api_result.dart'
    as _i4;
import 'package:flowery_e_commerce/features/generic/data/data_sources/contracts/generic_online_data_source.dart'
    as _i2;
import 'package:flowery_e_commerce/features/generic/domain/entity/generic_response_entity.dart'
    as _i5;
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

/// A class which mocks [GenericOnlineDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockGenericOnlineDataSource extends _i1.Mock
    implements _i2.GenericOnlineDataSource {
  MockGenericOnlineDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i4.DataResult<_i5.GenericResponseEntity>> getAll(
    String? resourceName,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#getAll, [resourceName]),
            returnValue:
                _i3.Future<_i4.DataResult<_i5.GenericResponseEntity>>.value(
                  _i6.dummyValue<_i4.DataResult<_i5.GenericResponseEntity>>(
                    this,
                    Invocation.method(#getAll, [resourceName]),
                  ),
                ),
          )
          as _i3.Future<_i4.DataResult<_i5.GenericResponseEntity>>);
}
