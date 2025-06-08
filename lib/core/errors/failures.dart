import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failures {
  final String errMessage;
  const Failures(this.errMessage);
}

class ServerFailuer extends Failures {
  ServerFailuer(super.errMessage);
  factory ServerFailuer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer("Connection timeout with API server");
      case DioExceptionType.sendTimeout:
        return ServerFailuer("Send timeout with API server");

      case DioExceptionType.receiveTimeout:
        return ServerFailuer("Receive timeout with API server");

      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
        throw UnimplementedError();
      case DioExceptionType.badResponse:
        return ServerFailuer.DioResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailuer("Request to API server was canceld");

      case DioExceptionType.connectionError:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailuer("No internet connection");
        } else {
          return ServerFailuer("Unexpected error, please try again");
        }
      default:
        return ServerFailuer("opps there was an error, please try later");
    }
  }
  factory ServerFailuer.DioResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuer("Your request not found, please try later");
    } else if (statusCode == 500) {
      return ServerFailuer("Internal server error, please try later");
    } else {
      return ServerFailuer("opps there was an error, please try later");
    }
  }
}
