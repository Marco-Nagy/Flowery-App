// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occasions_response_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OccasionsResponseModelEntity _$OccasionsResponseModelEntityFromJson(
        Map<String, dynamic> json) =>
    OccasionsResponseModelEntity(
      json['message'] as String?,
      json['metadata'] == null
          ? null
          : OccasionsResponseModelMetadataEntity.fromJson(
              json['metadata'] as Map<String, dynamic>),
      (json['occasions'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : OccasionsResponseModelOccasionsEntity.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OccasionsResponseModelEntityToJson(
        OccasionsResponseModelEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'metadata': instance.metadata,
      'occasions': instance.occasions,
    };

OccasionsResponseModelMetadataEntity
    _$OccasionsResponseModelMetadataEntityFromJson(Map<String, dynamic> json) =>
        OccasionsResponseModelMetadataEntity(
          (json['currentPage'] as num?)?.toInt(),
          (json['numberOfPages'] as num?)?.toInt(),
          (json['limit'] as num?)?.toInt(),
        );

Map<String, dynamic> _$OccasionsResponseModelMetadataEntityToJson(
        OccasionsResponseModelMetadataEntity instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'numberOfPages': instance.numberOfPages,
      'limit': instance.limit,
    };

OccasionsResponseModelOccasionsEntity
    _$OccasionsResponseModelOccasionsEntityFromJson(
            Map<String, dynamic> json) =>
        OccasionsResponseModelOccasionsEntity(
          json['_id'] as String?,
          json['name'] as String?,
          json['slug'] as String?,
          json['image'] as String?,
          json['createdAt'] as String?,
          json['updatedAt'] as String?,
        );

Map<String, dynamic> _$OccasionsResponseModelOccasionsEntityToJson(
        OccasionsResponseModelOccasionsEntity instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
