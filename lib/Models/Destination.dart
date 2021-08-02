import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;

  DestinationModel(
      {required this.name,
      required this.id,
      required this.imageUrl,
      required this.rating,
      required this.city,
      required this.price});

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
          name: json['name'],
          id: id,
          imageUrl: json['imageUrl'],
          rating: json['rating'].toDouble(),
          city: json['city'],
          price: json['price']);

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, city, imageUrl, rating, price];
}
