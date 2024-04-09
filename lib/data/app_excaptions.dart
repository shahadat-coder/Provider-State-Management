class AppException implements Exception{
  final message;
  final prefix;
  AppException([this.message, this.prefix]);

  String toString(){
    return '$prefix$message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message,]) : super(message, 'Error During communication');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid request');
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message]) : super(message, 'Unauthorized request');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}