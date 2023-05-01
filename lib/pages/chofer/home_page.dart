import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.user});

  final Users user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome page'),),
      body: Center(child: Text('Welcome home page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),),
    );
  }
}