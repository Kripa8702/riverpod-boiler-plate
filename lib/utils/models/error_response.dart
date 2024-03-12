class ErrorResponse {
  const ErrorResponse({
    required this.message,
  });

  final String message;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
    message: json['message'],
  );
}