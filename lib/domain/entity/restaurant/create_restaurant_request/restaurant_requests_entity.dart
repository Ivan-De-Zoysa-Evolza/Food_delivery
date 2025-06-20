import 'package:equatable/equatable.dart';

class CreateRestaurantRequestEntity extends Equatable {
  final String name;
  final String description;
  final String address;
  final String phone;
  final String email;
  final String openingTime;
  final String closingTime;
  final double rating;
  final int ratingCount;
  final int avgPrepareTime;
  final double deliveryCost;
  final bool freeDelivery;
  final double minOrderAmount;
  final List<String> cuisine;
  final String? image;

  const CreateRestaurantRequestEntity({
    required this.name,
    required this.description,
    required this.address,
    required this.phone,
    required this.email,
    required this.openingTime,
    required this.closingTime,
    required this.rating,
    required this.ratingCount,
    required this.avgPrepareTime,
    required this.deliveryCost,
    required this.freeDelivery,
    required this.minOrderAmount,
    required this.cuisine,
    this.image,
  });

  @override
  List<Object?> get props {
    return [
      name,
      description,
      address,
      phone,
      email,
      openingTime,
      closingTime,
      rating,
      ratingCount,
      avgPrepareTime,
      deliveryCost,
      freeDelivery,
      minOrderAmount,
      cuisine,
      image,
    ];
  }
}