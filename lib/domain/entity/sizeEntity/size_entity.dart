import 'package:equatable/equatable.dart';

class SizeEntity extends Equatable {
  final String? name;
  final double? price;

  const SizeEntity({required this.name, required this.price});

  @override
  List<Object?> get props => throw UnimplementedError();
}
