import 'package:json_annotation/json_annotation.dart';

part 'categories_response_model_entity.g.dart';

@JsonSerializable()
class CategoriesResponseModelEntity {
  String? message;
  CategoriesResponseModelMetadataEntity? metadata;
  List<CategoriesResponseModelCategoriesEntity?>? categories;

  CategoriesResponseModelEntity(this.message, this.metadata, this.categories);

  factory CategoriesResponseModelEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesResponseModelEntityToJson(this);
}

@JsonSerializable()
class CategoriesResponseModelMetadataEntity {
  int? currentPage;
  int? numberOfPages;
  int? limit;

  CategoriesResponseModelMetadataEntity(
      this.currentPage, this.numberOfPages, this.limit);

  factory CategoriesResponseModelMetadataEntity.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriesResponseModelMetadataEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CategoriesResponseModelMetadataEntityToJson(this);
}

@JsonSerializable()
class CategoriesResponseModelCategoriesEntity {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? slug;
  String? image;
  String? createdAt;
  String? updatedAt;

  CategoriesResponseModelCategoriesEntity(this.id, this.name, this.slug,
      this.image, this.createdAt, this.updatedAt);

  factory CategoriesResponseModelCategoriesEntity.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriesResponseModelCategoriesEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CategoriesResponseModelCategoriesEntityToJson(this);
}
