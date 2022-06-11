import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;



class ApiClient {


  Future<dynamic> post(String url, Map param) async {
    print("POST-->: $url");
    print("Calling parameters: $param");

   // String "token" = MyStorage().getData(key: StringConstant."token"Key)??"";

    var headers = {
      'Accept': 'application/json',
      'Authorization':"Bearer "+"token"
    };

    var responseJson;
    try {
      final response =
      await http.post(Uri.parse(url), body: param,headers: headers);
      responseJson = _response(response);
      print("Response: $responseJson");
    } catch (error) {
      log(error.toString());
    }
    return responseJson;
  }

  Future<dynamic> postMultipart(
      String url, Map<String, String> param, File files) async {
    print("POST-->: $url");
    print("Calling parameters: $param");

//    String "token" = MyStorage().getData(key: StringConstant."token"Key)??"";

    var headers = {
      'Accept': 'application/json',
      'Authorization':"Bearer "+"token"
    };

    var responseJson;
    try {
      final request = http.MultipartRequest("POST", Uri.parse(url));
      request.headers.addAll(headers);
      request.fields.addAll(param);
      request.files.add(http.MultipartFile.fromBytes(
        'image',
        await files.readAsBytes(),
      ));
      var response = await request.send();
      final respStr = await http.Response.fromStream(response);
      responseJson = await _response(respStr);
      print("Response: ${responseJson}");
    } catch (error) {
      log(error.toString());
    }
    return responseJson;
  }

  Future<dynamic> get(String url) async {

    print("GET-->: $url");
    // print(""token"-->: $"token"");
   // String "token" = MyStorage().getData(key: StringConstant."token"Key)??"";

    var headers = {
      'Accept': 'application/json',
      'Authorization':"Bearer "+"token"
    };
    var responseJson;
    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      responseJson = _response(response);
      print("Response: $responseJson");
    } on SocketException {
    //  showToast(message:  'No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;

      case 400:
        log(response.body.toString());

       // showToast(message: jsonDecode(response.body)['message'].toString());
        return null;

      case 401:
      case 403:
        log(response.body.toString());
       // showToast(message:  jsonDecode(response.body)['message'].toString());
        return null;

      case 404:
        log(response.body.toString());
       // showToast(message:  jsonDecode(response.body)['message'].toString());
        return null;

      case 409:
        log(response.body.toString());
      //  showToast(message:  jsonDecode(response.body)['message'].toString());
        return null;

      case 408:
        log(response.body.toString());
       // showToast(message: jsonDecode(response.body)['message'].toString());
        return null;

      case 500:
        log(response.body.toString());
       // showToast(message:  jsonDecode(response.body)['message'].toString());
        return null;

      case 503:
        log(response.body.toString());
      //  showToast(message:  jsonDecode(response.body)['message'].toString());
        return null;
      default:
        // showToast(message:
        // 'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }
}
