import 'package:equatable/equatable.dart';

class UpdateRestaurantRequestEntity extends Equatable {
  final String? name;
  final String? description;
  final String? phone;
  final double? rating;
  final int? ratingCount;
  final double? deliveryCost;
  final bool? freeDelivery;
  final double? minOrderAmount;

  const UpdateRestaurantRequestEntity({
    this.name,
    this.description,
    this.phone,
    this.rating,
    this.ratingCount,
    this.deliveryCost,
    this.freeDelivery,
    this.minOrderAmount,
  });

  @override
  List<Object?> get props {
    return [
      name,
      description,
      phone,
      rating,
      ratingCount,
      deliveryCost,
      freeDelivery,
      minOrderAmount,
    ];
  }
}