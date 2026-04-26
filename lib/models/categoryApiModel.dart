// import 'package:flutter/foundation.dart';

class Categoryapimodel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;
  final RatingModel count;

  Categoryapimodel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
    required this.count ,
  });

  factory Categoryapimodel.fromJson(jsondata) {
    return Categoryapimodel(
      id: jsondata['id'],
      title: jsondata['title'],
      price: jsondata['price'],
      description: jsondata['description'],
      category: jsondata['category'],
      image: jsondata['image'],
      rating: RatingModel.fromJson(jsondata['rate']),
      count: RatingModel.fromJson(jsondata['count']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.count, required this.rate});
  factory RatingModel.fromJson(jsondata) {
    return RatingModel(count: jsondata['count'], rate: jsondata[' rate']);
  }
}
