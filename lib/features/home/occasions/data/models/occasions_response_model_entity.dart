import 'package:json_annotation/json_annotation.dart';

part 'occasions_response_model_entity.g.dart';

@JsonSerializable()
class OccasionsResponseModelEntity {
  String? message;
  OccasionsResponseModelMetadataEntity? metadata;
  List<OccasionsResponseModelOccasionsEntity?>? occasions;

  OccasionsResponseModelEntity(this.message, this.metadata, this.occasions);

  factory OccasionsResponseModelEntity.fromJson(Map<String, dynamic> json) =>
      _$OccasionsResponseModelEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OccasionsResponseModelEntityToJson(this);
}

@JsonSerializable()
class OccasionsResponseModelMetadataEntity {
  int? currentPage;
  int? numberOfPages;
  int? limit;

  OccasionsResponseModelMetadataEntity(
      this.currentPage, this.numberOfPages, this.limit);

  factory OccasionsResponseModelMetadataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$OccasionsResponseModelMetadataEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OccasionsResponseModelMetadataEntityToJson(this);
}

@JsonSerializable()
class OccasionsResponseModelOccasionsEntity {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? slug;
  String? image;
  String? createdAt;
  String? updatedAt;

  OccasionsResponseModelOccasionsEntity(this.id, this.name, this.slug,
      this.image, this.createdAt, this.updatedAt);

  factory OccasionsResponseModelOccasionsEntity.fromJson(
          Map<String, dynamic> json) =>
      _$OccasionsResponseModelOccasionsEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OccasionsResponseModelOccasionsEntityToJson(this);
}
