import 'package:equatable/equatable.dart';

class RegisterUserEntity extends Equatable {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String address;

  const RegisterUserEntity({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
  });

  @override
  List<Object?> get props => [
    name,
    email,
    password,
    phone,
    address
  ];
}
