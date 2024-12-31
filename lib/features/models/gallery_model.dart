class GalleryModel {
  int? id;
  String? url;

  GalleryModel({
    this.id,
    this.url,
  });

  GalleryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'] as String?;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url ?? '',
    };
  }
}
