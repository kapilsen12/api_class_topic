import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper({
    required this.url,
  });

  final String url;

  // Function to POST data to Network location without including header in it
  Future postData(Object bodyData) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: bodyData,
    );
    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);
      return responseData;
    } else {
      return "Error";
    }
  }

  // Function to POST data to Network location with header in it
  Future postDataWithHeader(Object bodyData, String token) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: jsonEncode(bodyData),
      headers: {
        'Authorization': 'Token $token',
        'Content-Type': 'application/json'
      },
    );
    if (response.statusCode == 201) {
      String data = response.body;
      return data;
    } else {
      return "Error";
    }
  }

  // Function to PUT data to Network location with header in it
  Future putDataWithHeader(Object bodyData, String token) async {
    http.Response response = await http.put(
      Uri.parse(url),
      body: jsonEncode(bodyData),
      headers: {
        'Authorization': 'Token $token',
        'Content-Type': 'application/json'
      },
    );
    if (response.statusCode == 200) {
      String data = response.body;
      return data;
    } else {
      return "Error";
    }
  }

  // Function to DELETE data to Network location with header in it
  Future deleteDataWithHeader(String token) async {
    http.Response response = await http.delete(
      Uri.parse(url),
      headers: {
        'Authorization': 'Token $token',
        'Content-Type': 'application/json'
      },
    );
    if (response.statusCode == 204) {
      return "ok";
    } else {
      return "Error";
    }
  }

  // Function to PUT data to Network location with header in it and reply the response
  Future patchDataWithResponse(Object bodyData, String token) async {
    http.Response response = await http.patch(
      Uri.parse(url),
      body: jsonEncode(bodyData),
      headers: {
        'Authorization': 'Token $token',
        'Content-Type': 'application/json'
      },
    );
    if (response.statusCode == 200) {
      var reply = jsonDecode(response.body);
      return reply;
    } else {
      return "Error";
    }
  }

  // Function to get data from Network location with header in it
  Future getData() async {
    http.Response response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      return data;
    } else {
      return "Error";
    }
  }

  // Function to get data from Network location with header in it
  Future getDataWithHeader(String token) async {
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {'Authorization': 'Token $token'},
    );
    if (response.statusCode == 200) {
      String data = response.body;
      return data;
    } else {
      return "Error";
    }
  }
}
