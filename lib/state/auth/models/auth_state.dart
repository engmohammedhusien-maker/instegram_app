import 'package:flutter/foundation.dart' show immutable;
import 'package:instegram_app/state/auth/models/auth_result.dart';
import 'package:instegram_app/state/posts/typedefs/user_id.dart';

@immutable
class AuthState {
  final AuthResult? result;
  final bool isLoading;
  final UserId? userId;
  const AuthState({
    required this.isLoading,
    required this.result,
    required this.userId,
  });
  const AuthState.unknown() : result = null, isLoading = false, userId = null;

  AuthState copiedWithIsLoading(bool isLoading) =>
      AuthState(result: result, isLoading: isLoading, userId: userId);
  @override
  bool operator ==(covariant AuthState other) =>
      identical(other, this) ||
      (result == other.result &&
          isLoading == other.isLoading &&
          userId == other.userId);

  @override
  int get hashCode => Object.hash(result, isLoading, userId);
}
