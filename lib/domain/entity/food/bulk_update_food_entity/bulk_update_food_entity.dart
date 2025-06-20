import 'package:equatable/equatable.dart';

class BulkUpdateAvailabilityRequestEntity extends Equatable {
  final List<String> foodIds;
  final bool available;

  const BulkUpdateAvailabilityRequestEntity({
    required this.foodIds,
    required this.available,
  });

  @override
  List<Object?> get props {
    return [
      foodIds,
      available,
    ];
  }
}