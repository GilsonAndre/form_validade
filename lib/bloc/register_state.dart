part of 'register_bloc.dart';

class RegisterState {
  final String name;
  final String cpf;
  final String phone;
  final String dateBirth;
  final String email;
  final String password;

  RegisterState({
    this.name = '',
    this.cpf = '',
    this.phone = '',
    this.dateBirth = '',
    this.email = '',
    this.password = '',
  });

  RegisterState copyWith({
    String? name,
    String? cpf,
    String? phone,
    String? dateBirth,
    String? email,
    String? password,
  }) {
    return RegisterState(
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      phone: phone ?? this.phone,
      dateBirth: dateBirth ?? this.dateBirth,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
