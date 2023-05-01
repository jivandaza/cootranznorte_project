import 'package:cootranznorte_project/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserService with ChangeNotifier {
  String mensaje = '';
  late Users _user;

  Users get user {
    return _user;
  }

  set user(Users u) {
    _user = u;
    notifyListeners();
  }

  Future<Users> userByEmail(String email, String pass) async {
    String tipoo = "";
    var url = Uri.parse("http://192.168.20.32:8080/cootranznorte_project/userByEmail.php");
    var response = await http.post(url, body: {
      "username": email,
      "tipo": tipoo,
      "passwords": pass,
    });
    var user = new Users(correo: email, tipo: tipoo, password: pass);
    return user;
  }

}
