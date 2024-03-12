import 'package:flutter/material.dart';
import 'package:riverpod_boiler_plate/main.dart';

class ServerException implements Exception {
  final String message;
  final int statusCode;

  ServerException(this.message, {this.statusCode = 500});

  @override
  String toString() {
    return message;
  }
}

class NetworkException implements Exception {
  final String message;
  final int statusCode;

  NetworkException(this.message, {this.statusCode = 500});

  @override
  String toString() {
    return message;
  }
}

class UnAuthorizedException implements Exception {
  final String message;
  final int statusCode;

  UnAuthorizedException(this.message, {this.statusCode = 401});

  @override
  String toString() {
    return message;
  }
}

class BadRequestException implements Exception {
  final String message;
  final int statusCode;

  BadRequestException(this.message, {this.statusCode = 400});

  @override
  String toString() {
    return message;
  }
}

class OtherException implements Exception {
  final String message;
  final int statusCode;

  OtherException(this.message, {this.statusCode = 500});

  @override
  String toString() {
    return message;
  }
}

///can be used for throwing [NoInternetException]
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetException Occurred']) {
    if (globalMessengerKey.currentState != null) {
      globalMessengerKey.currentState!
          .showSnackBar(SnackBar(content: Text(message)));
    }
    _message = message;
  }
}
