import 'package:equatable/equatable.dart';

class RestaurantStatsEntity extends Equatable {
  final int foodCount;
  final double minPrice;
  final double maxPrice;
  final double avgPrice;
  final int totalRatings;
  final double avgRating;
  final Map<String, int> categoryBreakdown;

  const RestaurantStatsEntity({
    required this.foodCount,
    required this.minPrice,
    required this.maxPrice,
    required this.avgPrice,
    required this.totalRatings,
    required this.avgRating,
    required this.categoryBreakdown,
  });

  @override
  List<Object?> get props {
    return [
      foodCount,
      minPrice,
      maxPrice,
      avgPrice,
      totalRatings,
      avgRating,
      categoryBreakdown,
    ];
  }
}