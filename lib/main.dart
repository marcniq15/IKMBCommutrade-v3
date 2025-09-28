import 'package:flutter/material.dart';
import 'package:real_commutrade/screens/login_page.dart';
import 'package:real_commutrade/theme/app_theme.dart'; // Import your new theme file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // The app will currently only use the light theme.
  // We can add logic here later to switch to a dark theme.
  final ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CommuTrade',
      // Use the lightTheme you defined in app_theme.dart
      theme: AppTheme.lightTheme,

      // You can uncomment the darkTheme later when you want to build it out
      // darkTheme: AppTheme.darkTheme,

      themeMode: _themeMode,

      home: const LoginPage(),
    );
  }
}