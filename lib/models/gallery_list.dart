class MyGalleryList {
  bool? status;
  String? message;
  List<Data10>? data;

  MyGalleryList({this.status, this.message, this.data});

  MyGalleryList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data10>[];
      json['data'].forEach((v) {
        data!.add(Data10.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data10 {
  int? id;
  String? userId;
  String? images;

  Data10({this.id, this.userId, this.images});

  Data10.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    images = json['images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['images'] = images;
    return data;
  }
}
