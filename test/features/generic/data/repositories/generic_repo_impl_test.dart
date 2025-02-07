import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/generic/data/data_sources/contracts/generic_online_data_source.dart';
import 'package:flowery_e_commerce/features/generic/data/repositories/generic_repo_impl.dart';
import 'package:flowery_e_commerce/features/generic/domain/entity/generic_response_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'generic_repo_impl_test.mocks.dart';

@GenerateMocks([GenericOnlineDataSource])

void main() {
  late MockGenericOnlineDataSource mockOnlineDataSource;
  late GenericRepositoryImpl genericRepository;

  setUpAll(() {
    provideDummy<DataResult<GenericResponseEntity>>(
      Success(
        const GenericResponseEntity(
          metadata: Metadata(
            limit: 1,
            currentPage: 1,
            numberOfPages: 10,
          ),
          message: 'message',
          items: [],
        ),
      ),
    );
  });



  setUp(() {
    mockOnlineDataSource = MockGenericOnlineDataSource();
    genericRepository = GenericRepositoryImpl(mockOnlineDataSource);
  });

  group('GenericRepositoryImpl Tests', () {
    const resourceName = 'testResource';
    const mockEntity = GenericResponseEntity(
      metadata: Metadata(
        limit: 1,
        currentPage: 10,
        numberOfPages: 100,
      ),
      message: 'message',
      items: [
        Items(
          id: 'id',
          name: 'name',
          slug: 'slug',
          image: '',
          createdAt: '2024-11-19',
          updatedAt: '2024-11-19',
        ),
      ],
    );
    final mockDataResult = Success(mockEntity);

    test('getAll returns DataResult with GenericResponseEntity', () async {
      when(mockOnlineDataSource.getAll(resourceName))
          .thenAnswer((_) async => mockDataResult);

      final result = await genericRepository.getAll(resourceName);

      expect(result, mockDataResult);
      verify(mockOnlineDataSource.getAll(resourceName)).called(1);
    });

    test('getAll throws exception when data source fails', () async {
      final exception = Exception('Data source error');
      when(mockOnlineDataSource.getAll(resourceName)).thenThrow(exception);

      expect(() => genericRepository.getAll(resourceName), throwsA(isA<Exception>()));
      verify(mockOnlineDataSource.getAll(resourceName)).called(1);
    });
  });
}
