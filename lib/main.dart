import 'package:flutter/material.dart';
import 'login.dart';
import 'masatubuh.dart';
import 'register.dart';
import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealthApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyLogin(),
        '/register': (context) => MyRegister(),
        '/dashboard': (context) => MyDashboard(),
        '/calc': (context) => MyCalc(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
