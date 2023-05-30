import 'package:friendly_payment/app/models/user.dart';

abstract class AuthService {
  Future<void> signIn(String email, String password);
  Future<User> signUp(User user);
}
