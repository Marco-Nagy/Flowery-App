// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseModelEntity _$CategoriesResponseModelEntityFromJson(
        Map<String, dynamic> json) =>
    CategoriesResponseModelEntity(
      json['message'] as String?,
      json['metadata'] == null
          ? null
          : CategoriesResponseModelMetadataEntity.fromJson(
              json['metadata'] as Map<String, dynamic>),
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CategoriesResponseModelCategoriesEntity.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesResponseModelEntityToJson(
        CategoriesResponseModelEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'metadata': instance.metadata,
      'categories': instance.categories,
    };

CategoriesResponseModelMetadataEntity
    _$CategoriesResponseModelMetadataEntityFromJson(
            Map<String, dynamic> json) =>
        CategoriesResponseModelMetadataEntity(
          (json['currentPage'] as num?)?.toInt(),
          (json['numberOfPages'] as num?)?.toInt(),
          (json['limit'] as num?)?.toInt(),
        );

Map<String, dynamic> _$CategoriesResponseModelMetadataEntityToJson(
        CategoriesResponseModelMetadataEntity instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'numberOfPages': instance.numberOfPages,
      'limit': instance.limit,
    };

CategoriesResponseModelCategoriesEntity
    _$CategoriesResponseModelCategoriesEntityFromJson(
            Map<String, dynamic> json) =>
        CategoriesResponseModelCategoriesEntity(
          json['_id'] as String?,
          json['name'] as String?,
          json['slug'] as String?,
          json['image'] as String?,
          json['createdAt'] as String?,
          json['updatedAt'] as String?,
        );

Map<String, dynamic> _$CategoriesResponseModelCategoriesEntityToJson(
        CategoriesResponseModelCategoriesEntity instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
