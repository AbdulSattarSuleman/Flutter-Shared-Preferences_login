import 'package:flutter/material.dart';

Color bgColor = const Color.fromARGB(255, 35, 40, 43);
Color btnColor = const Color.fromARGB(255, 98, 211, 107);

TextStyle brandName = const TextStyle(
  fontSize: 23,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
TextStyle inputLabel = const TextStyle(
  fontSize: 17,
  color: Colors.white,
  // fontWeight: FontWeight.bold,
);
TextStyle idTextStyle = const TextStyle(
  fontSize: 23,
  color: Colors.white,
  // fontWeight: FontWeight.bold,
);
TextStyle kHead1 = const TextStyle(
  fontSize: 20,
  color: Colors.white54,
  fontWeight: FontWeight.bold,
);

TextStyle textFieldColor = const TextStyle(
  color: Colors.white,
  fontSize: 20,
);

customTextField(IconData icon) {
  return InputDecoration(
      suffixIcon: Icon(
        icon,
        color: Colors.white,
      ),
      border: const OutlineInputBorder(),
      focusColor: Colors.white,
      // fillColor: true,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 1,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 1,
        ),

        // borderSide: BorderSide(Colors.grey,width: 1),
      ));
}

var headStyle = const TextStyle(
  fontSize: 42,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

var priceHeadStyle = const TextStyle(
  fontSize: 30,
  color: Colors.white,
);
var myStyle = const TextStyle(
  fontSize: 30,
  color: Colors.black,
);
var tipText = const TextStyle(
  fontSize: 20,
  color: Colors.black,
);

var btnText = const TextStyle(
  color: Colors.white,
  fontSize: 22,
);

var chatText = const TextStyle(
  color: Colors.white,
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
