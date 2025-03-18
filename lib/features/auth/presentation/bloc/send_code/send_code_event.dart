part of 'send_code_bloc.dart';

abstract class SendCodeEvent extends Equatable {
  const SendCodeEvent();

  @override
  List<Object> get props => [];
}

class RequestCode extends SendCodeEvent {
  final String phone;

  const RequestCode({required this.phone});

  @override
  List<Object> get props => [phone];
}

class Login extends SendCodeEvent {
  final String phone;
  final String code;

  const Login({
    required this.phone,
    required this.code,
  });

  @override
  List<Object> get props => [phone, code];
}
