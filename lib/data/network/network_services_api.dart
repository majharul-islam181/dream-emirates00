// ignore_for_file: constant_pattern_never_matches_value_type
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dream_emirates/data/network/base_api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../exceptions/app_exceptions.dart';

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url, String? vendorId, String token) async {
    dynamic jsonResponse;
    try {
      // Add the headers for X-Vendor-ID and Authorization
      final headers = {
        // 'X-Vendor-ID': vendorId,
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      // If vendorId is not null, add it to the headers
      if (vendorId != null && vendorId.isNotEmpty) {
        headers['X-Vendor-ID'] = vendorId;
      }

      final response = await http
          .get(Uri.parse(url), headers: headers)
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

      if (kDebugMode) {
        print(url);
      }

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw FetchDataException('Time out try again');
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, var data, {String? token}) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }

    // Validate and clean the URL (optional but good practice)
    if (!url.startsWith('http://') && !url.startsWith('https://')) {
      throw const FormatException(
          'Invalid URL scheme. The URL must start with http:// or https://');
    }

    dynamic jsonResponse;
    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(data ?? {}),
        headers: {
          'Content-Type': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw FetchDataException('Time out try again');
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> statementPostApi(
      String url, String? vendorId, String token) async {
    dynamic jsonResponse;
    try {
      // Add the headers for X-Vendor-ID and Authorization
      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      // If vendorId is not null, add it to the headers
      if (vendorId != null && vendorId.isNotEmpty) {
        headers['X-Vendor-ID'] = vendorId;
      }

      // Convert body to JSON
      final response = await http
          .post(Uri.parse(url), headers: headers)
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

      if (kDebugMode) {
        print(url);
        // Print the body for debugging
      }

      if (response.statusCode == 200) {
        // Handle successful response if needed
      }
    } on SocketException {
      throw NoInternetException('No internet connection');
    } on TimeoutException {
      throw FetchDataException('Timeout, please try again');
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> delete(String url, {String? token}) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .delete(
            Uri.parse(''),
          )
          .timeout(const Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw FetchDataException('Time out try again');
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    if (kDebugMode) {
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    }

    switch (response.statusCode) {
      case 200:
        // Handle successful responses
        // if (response.body.isNotEmpty) {
        //   return jsonDecode(response.body) as Map<String, dynamic>;
        // } else {
        //   return {}; // Return an empty map if the body is empty
        // }
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 201:
        // Handle successful responses
        // if (response.body.isNotEmpty) {
        //   return jsonDecode(response.body) as Map<String, dynamic>;
        // } else {
        //   return {}; // Return an empty map if the body is empty
        // }
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        // return jsonDecode(response.body) as Map<String, dynamic>;
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 404:
        // return jsonDecode(response.body) as Map<String, dynamic>;
        var jsonResponse = jsonDecode(response.body);
        throw UnauthorisedException(
            jsonResponse['message'] ?? 'Unauthorized request');

      case 401:
        // throw UnauthorisedException();
        var jsonResponse = jsonDecode(response.body);
        throw UnauthorisedException(
            jsonResponse['message'] ?? 'Unauthorized request');

      case 500:
        // throw UnauthorisedException();
        var jsonResponse = jsonDecode(response.body);
        throw UnauthorisedException(
            jsonResponse['message'] ?? 'Unauthorized request');
      // case 500:
      //   throw FetchDataException(
      //       'Error communicating with server${response.statusCode}');
      // case 500:
      //   throw FetchDataException(
      //       '${response.statusCode}');
      default:
        throw FetchDataException('Unexpected error :  ${response.statusCode}');
    }
  }
}
