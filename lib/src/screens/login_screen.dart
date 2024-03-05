import 'package:flutter/material.dart';
import '../widgets/google_login_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google 로그인 예제'),
      ),
      body: Center(
        child: GoogleLoginButton(),
      ),
    );
  }
}