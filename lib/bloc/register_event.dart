part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();
}

class NameEvent extends RegisterEvent {
  final String name;

  NameEvent(this.name);
}

class CpfEvent extends RegisterEvent {
  final String cpf;

  CpfEvent(this.cpf);
}

class PhoneEvent extends RegisterEvent {
  final String phone;

  PhoneEvent(this.phone);
}

class DateBirthEvent extends RegisterEvent {
  final String dateBirth;

  DateBirthEvent(this.dateBirth);
}

class EmailEvent extends RegisterEvent {
  final String email;

  EmailEvent(this.email);
}

class PasswordEvent extends RegisterEvent {
  final String password;

  PasswordEvent(this.password);
}
