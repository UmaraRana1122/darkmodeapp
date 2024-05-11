class ChatHistoryList {
  bool? status;
  String? message;
  List<Data>? data;

  ChatHistoryList({this.status, this.message, this.data});

  ChatHistoryList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
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

class Data {
  int? id;
  String? chatRoomId;
  String? content;
  String? idFrom;
  String? idTo;
  String? isRead;
  String? type;
  String? createdAt;
  String? updatedAt;
  String? timestamp;
  String? receiverId;
  String? username;
  String? image;
  bool? isLuv;

  Data(
      {this.id,
      this.chatRoomId,
      this.content,
      this.idFrom,
      this.idTo,
      this.isRead,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.timestamp,
      this.receiverId,
      this.username,
      this.isLuv,
      this.image});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chatRoomId = json['chat_room_id'];
    content = json['content'];
    idFrom = json['idFrom'];
    idTo = json['idTo'];
    isRead = json['isRead'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    timestamp = json['timestamp'];
    receiverId = json['receiver_id'];
    username = json['username'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['chat_room_id'] = chatRoomId;
    data['content'] = content;
    data['idFrom'] = idFrom;
    data['idTo'] = idTo;
    data['isRead'] = isRead;
    data['type'] = type;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['timestamp'] = timestamp;
    data['receiver_id'] = receiverId;
    data['username'] = username;
    data['image'] = image;
    return data;
  }
}
