class AuthRequestEntity {
  final String phoneNumber;
  final String? code;
  final String? deviceId;

  AuthRequestEntity({
    required this.phoneNumber,
    this.code,
    this.deviceId,
  });
}
