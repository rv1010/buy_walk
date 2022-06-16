import 'package:buywalk/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BuyWalk',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF1237D6),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(
              color: Color(0xFF6B6B6B),
              width: 2,
            ),
          ),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF1237D6),
            onPrimary: Colors.white,
          ),
        ),
      ),
      home: const LoginView(),
    );
  }
}
