part of 'authentication_bloc.dart';

abstract class AuthenticationEvent {
  const AuthenticationEvent();
}

class _AuthenticationStatusChanged extends AuthenticationEvent {
  const _AuthenticationStatusChanged({required this.status});

  final AuthenticationStatus status;
}

class AuthenticationLogoutRequeted extends AuthenticationEvent {}
