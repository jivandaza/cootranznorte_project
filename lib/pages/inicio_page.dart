import 'package:cootranznorte_project/pages/login_page.dart';
import 'package:cootranznorte_project/widgets/cards.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardInicio(
                navegator: () => Get.to(LoginPage()),
                image: 'assets/transporte.png',
                titulo: 'Rutas',
                ancho: 0.5),
            CardInicio(
                navegator: () => Get.to(LoginPage()),
                image: 'assets/login.png',
                titulo: 'Login',
                ancho: 0.5
            ),
          ],
        ),
      ),
    );
  }
}