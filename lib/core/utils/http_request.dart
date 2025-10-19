import 'dart:io';

import 'package:http/http.dart';

class HttpRequest {
  final dummyToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI1MjUsInJvbGUiOiJPUkdBTklaQVRJT04iLCJvcmdhbml6YXRpb25JZCI6MjksImlhdCI6MTc2MDg0NTExNiwiZXhwIjoxNzYwODQ4NzE2fQ.dZ42VU1G-Yk7rWtsyz8-_lS8BMcndlP3RkdzR_-J4Lw';

  // ignore: non_constant_identifier_names
  Future<Response> GET({
    required String url,
    String? token,
  }) {
    final authToken = 'Bearer $dummyToken';

    return get(
      Uri.parse(url),
      headers: {
        'Authorization': authToken,
      },
    );
  }

  // ignore: non_constant_identifier_names
  Future<Response> POST({
    required String url,
    dynamic req,
    bool? isJson,
    bool? isFormField,
  }) async {
    final uri = Uri.parse(url);

    final headers = {
      if (isJson == true) 'Content-Type': 'application/json',
      if (isFormField == true)
        'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer $dummyToken',
    };

    if (req is Map<String, dynamic> && req.values.any((v) => v is File)) {
      final request = MultipartRequest('POST', uri)..headers.addAll(headers);

      for (var entry in req.entries) {
        if (entry.value is File) {
          final file = entry.value as File;
          request.files.add(await MultipartFile.fromPath(
            entry.key,
            file.path,
          ));
        } else {
          request.fields[entry.key] = entry.value.toString();
        }
      }

      final streamed = await request.send();
      return Response.fromStream(streamed);
    } else {
      return post(
        uri,
        headers: headers,
        body: req,
      );
    }
  }

  // ignore: non_constant_identifier_names
  Future<Response> EDIT({
    required String url,
    dynamic req,
    bool? isJson,
    bool? isFormField,
  }) async {
    final uri = Uri.parse(url);

    final headers = {
      if (isJson == true) 'Content-Type': 'application/json',
      if (isFormField == true)
        'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer $dummyToken',
    };

    if (req is Map<String, dynamic> && req.values.any((v) => v is File)) {
      final request = MultipartRequest('PUT', uri)..headers.addAll(headers);

      for (var entry in req.entries) {
        if (entry.value is File) {
          final file = entry.value as File;
          request.files.add(await MultipartFile.fromPath(
            entry.key,
            file.path,
          ));
        } else {
          request.fields[entry.key] = entry.value.toString();
        }
      }

      final streamed = await request.send();
      return Response.fromStream(streamed);
    } else {
      return put(
        uri,
        headers: headers,
        body: req,
      );
    }
  }

  // ignore: non_constant_identifier_names
  Future<Response> PATCH({
    required String url,
    dynamic req,
    bool? isJson,
    bool? isFormField,
  }) async {
    final uri = Uri.parse(url);

    final headers = {
      if (isJson == true) 'Content-Type': 'application/json',
      if (isFormField == true)
        'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer $dummyToken',
    };

    if (req is Map<String, dynamic> && req.values.any((v) => v is File)) {
      final request = MultipartRequest('PATCH', uri)..headers.addAll(headers);

      for (var entry in req.entries) {
        if (entry.value is File) {
          final file = entry.value as File;
          request.files.add(await MultipartFile.fromPath(
            entry.key,
            file.path,
          ));
        } else {
          request.fields[entry.key] = entry.value.toString();
        }
      }

      final streamed = await request.send();
      return Response.fromStream(streamed);
    } else {
      return patch(
        uri,
        headers: headers,
        body: req,
      );
    }
  }

  // ignore: non_constant_identifier_names
  Future<Response> DELETE({
    required String url,
    dynamic req,
  }) {
    return delete(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $dummyToken',
      },
      body: req,
    );
  }
}
