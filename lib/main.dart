import 'package:flutter/material.dart';
import 'package:login_page/screen/splash.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Sample',
      theme: ThemeData(primarySwatch: Colors.purple),
      home:hello(),
      debugShowCheckedModeBanner: false,
    );
  }
}