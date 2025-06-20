import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final String phone;
  final String address;
  final String role;
  final String created;
  final String updated;

  const UserEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
    required this.address,
    required this.role,
    required this.created,
    required this.updated,
  });

  @override
  List<Object?> get props {
    return [
      id, 
      email, 
      name, 
      phone, 
      address, 
      role, 
      created, 
      updated
      ];
  }
}
