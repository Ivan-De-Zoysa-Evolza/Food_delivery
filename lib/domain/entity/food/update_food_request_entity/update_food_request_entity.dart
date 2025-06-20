import 'package:equatable/equatable.dart';

class UpdateFoodRequestEntity extends Equatable {
  final String? name;
  final String? description;
  final double? basePrice;
  final double? rating;
  final int? ratingCount;
  final int? prepTime;
  final int? calories;

  const UpdateFoodRequestEntity({
    this.name,
    this.description,
    this.basePrice,
    this.rating,
    this.ratingCount,
    this.prepTime,
    this.calories,
  });

  @override
  List<Object?> get props {
    return [
      name,
      description,
      basePrice,
      rating,
      ratingCount,
      prepTime,
      calories,
    ];
  }
}