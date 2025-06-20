import 'package:equatable/equatable.dart';

class PaginatedResponseEntity<T> extends Equatable {
  final List<T> data;
  final int page;
  final int limit;
  final int totalPages;
  final int totalItems;
  final bool hasNext;
  final bool hasPrev;

  const PaginatedResponseEntity({
    required this.data,
    required this.page,
    required this.limit,
    required this.totalPages,
    required this.totalItems,
    required this.hasNext,
    required this.hasPrev,
  });

  @override
  List<Object?> get props {
    return [
      data,
      page,
      limit,
      totalPages,
      totalItems,
      hasNext,
      hasPrev,
    ];
  }
}