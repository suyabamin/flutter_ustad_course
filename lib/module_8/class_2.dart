import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('log in'),

        
      ),
      body: Column(
        children: [
        Image.asset('assat/sa.png')
        ],
        ),
    );
  }
}