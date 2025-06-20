import 'package:equatable/equatable.dart';

class HealthCheckEntity extends Equatable {
  final String status;
  final String message;
  final DateTime timestamp;
  final Map<String, dynamic>? details;

  const HealthCheckEntity({
    required this.status,
    required this.message,
    required this.timestamp,
    this.details,
  });

  @override
  List<Object?> get props {
    return [
      status,
      message,
      timestamp,
      details,
    ];
  }
}