import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_shared_preferences/home-page/home_screen.dart';
import 'package:flutter_login_shared_preferences/login-page/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var username = prefs.getString('username');
  if (kDebugMode) {
    print(username);
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: username == null ? const LoginScreen() : const HomeScreen(),
  ));
}
