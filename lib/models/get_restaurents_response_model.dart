import 'dart:convert';

GetRestaurentsResponseModel getRestaurentsResponseJson(String str) =>
    GetRestaurentsResponseModel.fromJson(json.decode(str));

class GetRestaurentsResponseModel {
  String? status;
  String? code;
  List<Data>? data;

  GetRestaurentsResponseModel({this.status, this.code, this.data});

  GetRestaurentsResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? tags;
  double? rating;
  int? discount;
  String? primaryImage;
  double? distance;

  Data(
      {this.id,
      this.name,
      this.tags,
      this.rating,
      this.discount,
      this.primaryImage,
      this.distance});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tags = json['tags'];
    rating = json['rating'];
    discount = json['discount'];
    primaryImage = json['primary_image'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['tags'] = this.tags;
    data['rating'] = this.rating;
    data['discount'] = this.discount;
    data['primary_image'] = this.primaryImage;
    data['distance'] = this.distance;
    return data;
  }
}
