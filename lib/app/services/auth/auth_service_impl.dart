import 'package:friendly_payment/app/models/user.dart';
import 'package:friendly_payment/app/repositories/auth/auth_repository.dart';

import 'package:friendly_payment/app/services/auth/auth_service.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;

  AuthServiceImpl({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  Future<void> signIn(String email, String password) =>
      _authRepository.signIn(email, password);

  @override
  Future<User> signUp(User user) => _authRepository.signUp(user);
}
