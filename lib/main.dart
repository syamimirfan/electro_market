import 'package:electro_market/authentication/login.dart';
import 'package:electro_market/authentication/register.dart';
import 'package:electro_market/provider/hidden_password.dart';
import 'package:electro_market/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => HiddenPassword())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
        routes: {
          '/login':(context) => Login(),
          '/register':(context) => Register()
        },
      ),
    );
  }
}