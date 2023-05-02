import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:edutrack/client/AuthResult.dart';

final dio = Dio()

class EdutrackClient {
 Future<AuthResult?> authenticate(String username, String password) async {
   Response response = await dio.post('http://192.168.0.111:3001/auth/login', data: {
     "username": username,
     "password": password
   });
   if (response.statusCode != 200){
     return null;
   }
   final parsedJson = jsonDecode(response.data);
   return AuthResult.fromJson(parsedJson);
 }

 Future<AuthResult?> refresh(AuthResult oldResult) async {
   Response response = await dio.post('http://192.168.0.111:3001/auth/refresh', data: {
     "token": oldResult.refreshKey
   });
   if (response.statusCode != 200){
     return null;
   }
   final parsedJson = jsonDecode(response.data);
   return AuthResult(parsedJson["access_key"], oldResult.refreshKey);
 }
}