import 'package:friendly_payment/app/core/constants/endpoints.dart';
import 'package:friendly_payment/app/core/constants/http_methods.dart';
import 'package:friendly_payment/app/core/network/base_rest_user.dart';
import 'package:friendly_payment/app/models/user.dart';

import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final BaseRestUser _request;

  AuthRepositoryImpl({required BaseRestUser request}) : _request = request;

  @override
  Future<void> signIn() {
    throw UnimplementedError();
  }

  @override
  Future<User> signUp(User user) async {
    final result = await _request.restDioRequest(
      url: Endpoints.signup,
      method: HttpMethod.post,
      body: user.toMap()
    );

    final user2 = User.fromMap(result['result']);

    throw UnimplementedError();
    
  }
}
