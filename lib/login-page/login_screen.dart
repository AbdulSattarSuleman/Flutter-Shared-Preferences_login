import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home-page/home_screen.dart';
import '../style.dart';
import '../utils/constant.dart';
import '../utils/custom_swtich_class.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String id = "loginScreen";

  bool status = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
        child: ListView(
          children: [
            const Image(
                width: 100,
                height: 100,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMIJyny96kHwZjhjFQrcYak49a_zT4o2hh0w&usqp=CAU")),
            const Spacer(
              flex: 3,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Jawan Pakistan Blockchain",
              textAlign: TextAlign.center,
              style: brandName,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Username",
              style: inputLabel,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: TextFormField(
                // autofocus: true,
                controller: usernameController,
                decoration: customTextField(Icons.abc),
                style: textFieldColor,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Password",
              style: inputLabel,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: customTextField(
                  Icons.visibility_off_outlined,
                ),
                style: textFieldColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Text(
                      idText,
                      style: idTextStyle,
                      // textAlign: TextAlign.center,
                    ),
                  ),

                  CustomSwitch(
                    // activeColor: Colors.pinkAccent,
                    value: status,
                    onChanged: (value) {
                      print("VALUE : $value");
                      setState(() {
                        status = value;
                      });
                    },
                  ),
                  // ToggleButtons(children: const [], isSelected: const [true])
                ],
              ),
            ),
            InkWell(
              onTap: (() async {
                print(usernameController.text);
                SharedPreferences prefs = await SharedPreferences.getInstance();
                if (usernameController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Required Fields Empty ")));
                } else {
                  prefs.setString("username", usernameController.text);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => HomeScreen(
                              username: usernameController.text,
                            )),
                  );
                }
              }),
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                height: 50,
                color: btnColor,
                child: Center(
                  child: Text(
                    "NEXT",
                    style: idTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
