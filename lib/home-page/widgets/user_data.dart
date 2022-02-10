import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../style.dart';
import '../../login-page/login_screen.dart';

class UsernameScreen extends StatelessWidget {
  final String username;
  const UsernameScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove("username");
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
            child: Text(
              "Logout",
              style: chatText,
            ),
          ),
          Text(
            username.toString().isNotEmpty ? username.toString() : "Abdul ",
            // usernameController.text,
            style: chatText,
          ),
        ],
      ),
    );
  }
}
