import 'package:equatable/equatable.dart';

class ApiResponseEntity<T> extends Equatable {
  final bool success;
  final String? message;
  final T? data;
  final dynamic error;

  const ApiResponseEntity({
    required this.success,
    this.message,
    this.data,
    this.error,
  });

  @override
  List<Object?> get props {
    return [
      success,
      message,
      data,
      error,
    ];
  }
}