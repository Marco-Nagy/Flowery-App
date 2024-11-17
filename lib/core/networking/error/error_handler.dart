// import 'dart:io';
//
// import 'package:dio/dio.dart';
//
// import 'error_model.dart';
//
// class ErrorHandler {
//   // Handle the exception and return an ErrorModel
//   static ErrorModel handle(Exception error) {
//     if (error is DioException) {
//       return ErrorHandler.networkError(error, error.response?.statusCode);
//     } else if (error is IOException) {
//       return ErrorModel(error: "No internet connection. Please check your settings.");
//     } else {
//       return ErrorModel(error: "An unknown error occurred. Please try again.");
//     }
//   }
//
//   static ErrorModel serverError(int? statusCode, ErrorModel response) {
//     switch (statusCode) {
//       case 400:
//         return ErrorModel(error: "Bad request. Please verify your input and try again.");
//       case 401:
//       case 402:
//       case 403:
//         return ErrorModel(error: response.error ?? 'Unauthorized access');
//       case 404:
//         return ErrorModel(error: "Resource not found. Please check the URL and try again.");
//       case 408:
//         return ErrorModel(error: "Connection timed out. Please check your internet connection.");
//       case 409: // Conflict
//         return ErrorModel(error: response.error ?? "user already exists.");
//       default:
//         return ErrorModel(error: response.error ?? "An unexpected error occurred. Please try again.");
//     }
//   }
//
//   static ErrorModel networkError(DioException error, int? statusCode) {
//     switch (statusCode) {
//       case 500:
//         return ErrorModel(error: "Internal server error. Please try again later.");
//       case 502:
//         return ErrorModel(error: "Bad Gateway. The server received an invalid response.");
//       case 503:
//         return ErrorModel(error: "Service Unavailable. The server is currently unable to handle the request.");
//       case 504:
//         return ErrorModel(error: "Gateway Timeout. The server took too long to respond.");
//       default:
//         if (error.response?.data is Map<String, dynamic>) {
//           final errorModel = ErrorModel.fromJson(error.response!.data as Map<String, dynamic>);
//           return ErrorHandler.serverError(error.response?.statusCode, errorModel);
//         }
//         return ErrorModel(error: "An unexpected error occurred. Please try again.");
//     }
//   }
// }
//

import 'package:dio/dio.dart';
import 'error_model.dart';

class ErrorHandler {
  static ErrorModel handle(Exception error) {
    if (error is DioException) {
      return _handleDioException(error);
    }
    return ErrorModel(error: "An unknown error occurred.");
  }

  static ErrorModel _handleDioException(DioException error) {
    final statusCode = error.response?.statusCode;

    if (statusCode != null) {
      return _handleHttpStatus(error, statusCode);
    } else {
      return ErrorModel(
        error: "A network error occurred. Please check your connection and try again.",
      );
    }
  }

  static ErrorModel _handleHttpStatus(DioException error, int statusCode) {
    if (error.response?.data is Map<String, dynamic>) {
      try {
        final errorModel = ErrorModel.fromJson(error.response!.data as Map<String, dynamic>);
        return _serverError(statusCode, errorModel);
      } catch (_) {
        return ErrorModel(
          error: error.response?.data.toString() ?? "Unexpected error format from server.",
        );
      }
    }

    return _networkError(error, statusCode);
  }

  static ErrorModel _serverError(int statusCode, ErrorModel response) {
    switch (statusCode) {
      case 400:
        return ErrorModel(error: "Bad request. Please verify your input and try again.");
      case 401:
        return ErrorModel(error: response.error ?? "Unauthorized. Please check your credentials.");
      case 403:
        return ErrorModel(error: "Access denied. You do not have permission.");
      case 404:
        return ErrorModel(error: "Resource not found. Please check the URL.");
      case 408:
        return ErrorModel(error: "Request timeout. Please check your internet connection.");
      case 409:
        return ErrorModel(error: response.error ?? "Conflict. User already exists.");
      default:
        return ErrorModel(error: response.error ?? "An unexpected server error occurred.");
    }
  }

  static ErrorModel _networkError(DioException error, int statusCode) {
    switch (statusCode) {
      case 500:
        return ErrorModel(error: "Internal server error. Please try again later.");
      case 502:
        return ErrorModel(error: "Bad Gateway. The server received an invalid response.");
      case 503:
        return ErrorModel(error: "Service unavailable. Please try again later.");
      case 504:
        return ErrorModel(error: "Gateway timeout. The server took too long to respond.");
      default:
        return ErrorModel(error: "A network error occurred. Please try again.");
    }
  }
}
