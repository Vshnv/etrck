class AuthResult {
  final String accessKey;
  final String refreshKey;

  AuthResult(this.accessKey, this.refreshKey);

  factory AuthResult.fromJson(Map<String, dynamic> data) {
    final accessKey = data['access_key'] as String;
    final refreshKey = data['refresh_key'] as String;
    return AuthResult(accessKey, refreshKey);
  }
}