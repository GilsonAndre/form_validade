import 'dart:async';

import 'package:bloc/bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<NameEvent>(_nameEvent);
    on<CpfEvent>(_cpfEvent);
    on<PhoneEvent>(_phoneEvent);
    on<DateBirthEvent>(_dateBirthEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  FutureOr<void> _nameEvent(
    NameEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(name: event.name));
  }

  FutureOr<void> _cpfEvent(
    CpfEvent event,
    Emitter<RegisterState> emit,
  ) async {
     emit(state.copyWith(cpf: event.cpf));
  }

  FutureOr<void> _phoneEvent(
    PhoneEvent event,
    Emitter<RegisterState> emit,
  ) async {
     emit(state.copyWith(phone: event.phone));
  }

  FutureOr<void> _dateBirthEvent(
    DateBirthEvent event,
    Emitter<RegisterState> emit,
  ) async {
     emit(state.copyWith(dateBirth: event.dateBirth));
  }

  FutureOr<void> _emailEvent(
    EmailEvent event,
    Emitter<RegisterState> emit,
  ) async {
     emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _passwordEvent(
    PasswordEvent event,
    Emitter<RegisterState> emit,
  ) async {
     emit(state.copyWith(password: event.password));
  }
}
