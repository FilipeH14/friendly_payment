import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:friendly_payment/app/services/auth/auth_service.dart';

part 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  final AuthService _authService;

  LoginController({required AuthService authService})
      : _authService = authService,
        super(const LoginState.initial());

  // Future<void> signIn(String email, String password) {}
}
