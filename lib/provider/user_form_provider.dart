import 'package:cootranznorte_project/models/user_model.dart';
import 'package:flutter/material.dart';

class UserFormProvider with ChangeNotifier {

  final key = GlobalKey<FormState>();

  Users user = Users(
    correo: '',
    tipo: 'user',
  );


  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading (bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool _isValid = false;
  bool get isValid => _isValid;
  set isValid (bool value) {
    _isValid = value;
    notifyListeners();
  }


  bool isValidForm(){    
    print(key.currentState?.validate());
    return key.currentState?.validate() ?? false;
  }

  validForm() {
    print('Válido ${key.currentState?.validate()}');
    isValid = key.currentState?.validate() ?? false;
  }
  
}
