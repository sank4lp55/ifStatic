import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:ifstatic/models/get_restaurents_request_model.dart';
import 'package:ifstatic/models/get_restaurents_response_model.dart';

class BackendInterface {
  static var client = http.Client();

  static Future<GetRestaurentsResponseModel> getRestaurents(
      GetRestaurentsRequestModel model) async {
    // await Future.delayed(const Duration(seconds: 3));
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
      //'Authorization': '$token',
      //HttpHeaders.authorizationHeader: '$token',
    };
    final encoding = Encoding.getByName('utf-8');

    var url =
        Uri.parse('https://theoptimiz.com/restro/public/api/get_resturants');

    var response = await client.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'Authorization': '$token',
      },
      body: jsonEncode(model.toJson()),
      encoding: encoding,
    );
    http.Response addTransactionResponseModel = response;

    if (response.statusCode == 200) {
      return getRestaurentsResponseJson(response.body);
    } else {
      return getRestaurentsResponseJson(response.body);
      ;
    }
  }
}
