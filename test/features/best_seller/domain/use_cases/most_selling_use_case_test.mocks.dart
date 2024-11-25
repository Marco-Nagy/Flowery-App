// Mocks generated by Mockito 5.4.4 from annotations
// in flowery_e_commerce/test/features/best_seller/domain/use_cases/most_selling_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:flowery_e_commerce/core/networking/common/api_result.dart'
    as _i4;
import 'package:flowery_e_commerce/features/best_seller/domain/entities/most_selling_entity.dart'
    as _i5;
import 'package:flowery_e_commerce/features/best_seller/domain/repositories/most_selling_products_repository.dart'
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
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [MostSellingProductsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMostSellingProductsRepository extends _i1.Mock
    implements _i2.MostSellingProductsRepository {
  MockMostSellingProductsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i4.DataResult<List<_i5.MostSellingProducts>>>
      getMostSellingProducts() => (super.noSuchMethod(
            Invocation.method(
              #getMostSellingProducts,
              [],
            ),
            returnValue: _i3
                .Future<_i4.DataResult<List<_i5.MostSellingProducts>>>.value(
                _i6.dummyValue<_i4.DataResult<List<_i5.MostSellingProducts>>>(
              this,
              Invocation.method(
                #getMostSellingProducts,
                [],
              ),
            )),
          ) as _i3.Future<_i4.DataResult<List<_i5.MostSellingProducts>>>);
}
