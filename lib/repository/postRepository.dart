import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:equitable/model/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class Postrepository {
  Future<List<PostModel>> fetchPost() async {
    log("Fetching posts...");
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
      if (response.statusCode == 200) {
        log("API Response Body: ${response.body.substring(0, 500)}...");
        final body = json.decode(response.body) as List;

        log("Total Posts Fetched: ${body.length}");
        return body.map((e) {
          return PostModel(
            id: e["id"] as int,
            postId: e["postId"] as int,
            email: e["email"] as String,
            body: e["body"] as String,
          );
        }).toList();
      }
    } on SocketException {
      throw Exception("error while feteching data");
    } on TimeoutException {
      throw Exception("error while fetching data");
    }
    throw Exception("error while fetching data");
  }
}
