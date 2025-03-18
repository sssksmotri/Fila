part of 'send_code_bloc.dart';

abstract class SendCodeState extends Equatable {
  const SendCodeState();

  @override
  List<Object> get props => [];
}

class SendCodeInitial extends SendCodeState {}

class SendCodeSending extends SendCodeState {}

class RecivedToken extends SendCodeState {
  final AccessTokenEntity accessTokenEntity;

  const RecivedToken({
    required this.accessTokenEntity,
  });

  @override
  List<Object> get props => <Object>[
        accessTokenEntity,
      ];
}

class AuthSentCode extends SendCodeState {
  final GetCodeStatusEntity getCodeStatusEntity;

  const AuthSentCode({
    required this.getCodeStatusEntity,
  });

  @override
  List<Object> get props => <Object>[
        getCodeStatusEntity,
      ];
}

class AuthFailure extends SendCodeState {
  final String message;
  const AuthFailure({
    required this.message,
  });

  @override
  List<Object> get props => <Object>[
        message,
      ];
}

class AuthCheckCodeFailure extends SendCodeState {
  final String message;
  const AuthCheckCodeFailure({
    required this.message,
  });

  @override
  List<Object> get props => <Object>[
        message,
      ];
}
