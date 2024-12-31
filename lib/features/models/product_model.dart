import 'package:e_fran/features/models/category_model.dart';
import 'package:e_fran/features/models/gallery_model.dart';

class ProductModel {
  int? id;
  String? name;
  double? price;
  String? description;
  String? tags;
  CategoryModel? category;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<GalleryModel>? galleries;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.description,
    this.tags,
    this.category,
    this.createdAt,
    this.updatedAt,
    this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    price = json['price'] != null
        ? double.tryParse(json['price'].toString())
        : null;
    description = json['description'] as String?;
    tags = json['tags'] as String?;
    category = json['category'] != null
        ? CategoryModel.fromJson(json['category'])
        : null;
    createdAt = json['created_at'] != null
        ? DateTime.tryParse(json['created_at'].toString())
        : null;
    updatedAt = json['updated_at'] != null
        ? DateTime.tryParse(json['updated_at'].toString())
        : null;
    galleries = json['galleries'] != null && json['galleries'] is List
        ? (json['galleries'] as List)
            .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
            .toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category?.toJson(),
      'galleries': galleries != null
          ? galleries!.map((gallery) => gallery.toJson()).toList()
          : [],
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
