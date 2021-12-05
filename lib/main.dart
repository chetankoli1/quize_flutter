import 'package:flutter/material.dart';
import 'package:quiz_flutter/Screens/change_password_screen.dart';
import 'package:quiz_flutter/Screens/forgot_screen_email.dart';
import 'package:quiz_flutter/Screens/forgot_screen_mobile.dart';
import 'package:quiz_flutter/Screens/login_screen.dart';
import 'package:quiz_flutter/Screens/main_home.dart';
import 'package:quiz_flutter/Screens/register_screen.dart';
import 'package:quiz_flutter/Screens/spash_screen.dart';
import 'package:quiz_flutter/Screens/update_email_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SpashScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/forgotemail': (context) => const ForgotPasswordScreenForEmail(),
        '/forgotmobile' : (context) => const ForgotPasswordScreenForMobile(),
        '/changepass' : (context) => const ChangePasswordScreen(),
        '/updatemail' : (context) => const UpdateEmailScreen(),
        '/mainscreen' : (context) => const MainScreen(),
      },
    );
  }
}
