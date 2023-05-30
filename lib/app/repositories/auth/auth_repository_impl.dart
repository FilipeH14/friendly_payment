import 'package:friendly_payment/app/core/constants/endpoints.dart';
import 'package:friendly_payment/app/core/constants/http_methods.dart';
import 'package:friendly_payment/app/core/network/base_rest_user.dart';
import 'package:friendly_payment/app/models/user.dart';

import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final BaseRestUser _request;

  AuthRepositoryImpl({required BaseRestUser request}) : _request = request;

  @override
  Future<void> signIn(String email, String password) async {
    final result = await _request.restDioRequest(
      url: Endpoints.signin,
      method: HttpMethod.post,
      body: {
        'email': email,
        'password': password,
      },
    );

    final userData = User.fromMap(result['result']);
  }

  @override
  Future<User> signUp(User user) async {
    final result = await _request.restDioRequest(
      url: Endpoints.signup,
      method: HttpMethod.post,
      body: user.toMap(),
    );

    final userData = User.fromMap(result['result']);

    return userData;

    // throw UnimplementedError();
  }

  Future<User> validateToken(String token) async {
    final result = await _request.restDioRequest(
      url: Endpoints.validateToken,
      method: HttpMethod.post,
      headers: {
        'X-Parse-Session-Token': token,
      },
    );

    final userData = User.fromMap(result['result']);

    return userData;
  }
}
