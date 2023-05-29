import 'package:friendly_payment/app/models/user.dart';

abstract class AuthRepository {
  Future<void> signIn();
  Future<User> signUp(User user);
}
