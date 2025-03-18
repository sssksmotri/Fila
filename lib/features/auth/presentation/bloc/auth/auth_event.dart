part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AppStarted extends AuthEvent {}

class LoginRequested extends AuthEvent {
  final String token;

  const LoginRequested(this.token);

  @override
  List<Object?> get props => [token];
}

class LogoutRequested extends AuthEvent {}
