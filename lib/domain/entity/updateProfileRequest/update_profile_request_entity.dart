import 'package:equatable/equatable.dart';

class UpdateProfileRequestEntity extends Equatable {
  final String? name;
  final String? phone;
  final String? address;

  const UpdateProfileRequestEntity({
    this.name,
    this.phone,
    this.address,
  });

  @override
  List<Object?> get props {
    return [
      name,
      phone,
      address,
    ];
  }
}