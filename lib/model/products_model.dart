// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.images,
    this.categoryId,
  });

  int? id;
  String? title;
  double? price;
  String? description;
  Category? category;
  List<String>? images;
  int? categoryId;

  factory Product.fromJson(Map<String, dynamic> json) {
    try {
      return Product(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: Category.fromJson(json["category"]),
        images: json["images"] is List
            ? (json["images"] == null || json["images"].isEmpty)
                ? ["https://api.lorem.space/image?w=640&h=480&r=9869"]
                : List<String>.from(json["images"].map((x) => x))
            : ["https://api.lorem.space/image?w=640&h=480&r=9869"],
        categoryId: json["categoryId"],
      );
    } catch (e) {
     return Product(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: Category.fromJson(json["category"]),
        images: [],
        categoryId: json["categoryId"],
      );
    }
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category?.toJson(),
        "images": List<dynamic>.from(images!.map((x) => x)),
        "categoryId": categoryId,
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.image,
  });

  int? id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Category && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
  String? name;
  String? image;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}
