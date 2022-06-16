import 'dart:convert';

class ItemModel {
  String? category;
  String? image;

  String? description;

  ItemModel(this.category, this.image, this.description);
}

// To parse this JSON data, do
//
//     final ecoville = ecovilleFromJson(jsonString);

List<Ecoville> ecovilleFromJson(String str) =>
    List<Ecoville>.from(json.decode(str).map((x) => Ecoville.fromJson(x)));

String ecovilleToJson(List<Ecoville> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ecoville {
  Ecoville({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.urls,
    this.blurHash,
    this.description,
    this.altDescription,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
  });

  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? promotedAt;
  int? width;
  int? height;
  Urls? urls;
  String? color;
  String? blurHash;
  dynamic description;
  String? altDescription;

  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  factory Ecoville.fromJson(Map<String, dynamic> json) => Ecoville(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        promotedAt: json["promoted_at"] == null
            ? null
            : DateTime.parse(json["promoted_at"]),
        width: json["width"],
        height: json["height"],
        color: json["color"],
        blurHash: json["blur_hash"],
        description: json["description"],
        altDescription:
            json["alt_description"] == null ? null : json["alt_description"],
        likes: json["likes"],
        urls: Urls.fromJson(json["urls"]),
        likedByUser: json["liked_by_user"],
        currentUserCollections:
            List<dynamic>.from(json["current_user_collections"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "promoted_at":
            promotedAt == null ? null : promotedAt?.toIso8601String(),
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription ?? null,
        "likes": likes,
        "liked_by_user": likedByUser,
      };
}

class Urls {
  Urls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
    this.smallS3,
  });

  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
        smallS3: json["small_s3"],
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}
