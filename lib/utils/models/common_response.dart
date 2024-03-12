class CommonResponse {
  const CommonResponse({
    required this.success,
    required this.message,
  });

  final bool success;
  final String message;

  factory CommonResponse.fromJson(Map<String, dynamic> json) => CommonResponse(
    success: json['success'],
    message: json['message'],
  );
}

