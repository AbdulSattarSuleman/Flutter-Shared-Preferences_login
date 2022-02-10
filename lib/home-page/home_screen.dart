import 'package:flutter/material.dart';
import 'package:flutter_login_shared_preferences/home-page/widgets/token_card_screen.dart';

import '../style.dart';
import 'widgets/user_data.dart';

class HomeScreen extends StatefulWidget {
  final String? username;
  const HomeScreen({Key? key, this.username})
      : super(
          key: key,
        );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // margin: const EdgeInsets.only(bottom: 10),
              width: screenSize.width,
              height: 240,
              color: bgColor,
              child: Column(
                children: [
                  UsernameScreen(username: widget.username.toString()),
                  // Padding(
                  //   padding: const EdgeInsets.all(20),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         "Logout",
                  //         style: chatText,
                  //       ),
                  //       Text(
                  //         // username.toString().isNotEmpty ? username.toString() : "Abdul ",
                  //         widget.username.toString(),
                  //         style: chatText,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // 2nd row
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Total Balance",
                              style: kHead1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$426.75",
                              style: chatText,
                            ),
                          ],
                        ),
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: bgColor,
                              onPrimary: Colors.white,
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                            label: const Text("Add Token"))
                      ],
                    ),
                  ),
                  // 3rd row
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your Tokens",
                          style: chatText,
                        ),
                        Text(
                          "Make Changes",
                          style: kHead1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TokenCardScreen(),
          ],
        ),
      ),
    );
  }
}
