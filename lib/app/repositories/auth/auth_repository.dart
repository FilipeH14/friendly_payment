import 'package:friendly_payment/app/models/user.dart';

abstract class AuthRepository {
  Future<void> signIn(String email, String password);
  Future<User> signUp(User user);
}
