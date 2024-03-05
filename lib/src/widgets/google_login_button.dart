import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final authService = AuthService();
        final user = await authService.signInWithGoogle();
        if (user != null) {
          // 로그인 성공 시 처리
          print('Google 로그인 성공: ${user.displayName}');
        } else {
          // 로그인 실패 시 처리
          print('Google 로그인 실패');
        }
      },
      child: Text('Google 로그인'),
    );
  }
}