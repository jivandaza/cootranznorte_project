import 'dart:convert';
import 'package:cootranznorte_project/models/user_model.dart';
import 'package:cootranznorte_project/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {
  String mensaje = '';
  late Users user;
  final userService = UserService();

  Future<bool?> login(String email, String password) async {
    String url = "https://brahayanbbc.000webhostapp.com/API/login.php";
    var response = await http.post(Uri.parse(url), body: {
      "username": email,
      "passwords": password,
    });
    var data = jsonDecode(response.body);
    if (data == "Success") {
      user = await userService.userByEmail(email, password);
      return true;
    } else {
      mensaje = 'Usuario o contraseña incorrecta...';
      return false;
    }
  }
}
