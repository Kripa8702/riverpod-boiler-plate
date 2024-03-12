part of 'login_controller.dart';

enum LoginStatus { initial, loading, success, error }

class LoginState extends Equatable {
  final LoginStatus status;
  final UserModel? user;
  final String? error;

  const LoginState({
    this.status = LoginStatus.initial,
    this.user,
    this.error,
  });

  LoginState copyWith({
    LoginStatus? status,
    UserModel? user,
    String? error,
  }) {
    return LoginState(
      status: status ?? this.status,
      user: user ?? this.user,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, user, error];
}