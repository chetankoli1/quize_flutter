import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Consts {
  static const String appname = "Flutter Quiz";
  static const String loading = "Loading...";
  static const String vText =
      "You will get a verification link in this email id.Verify your email to have it changed here.";
}

const TextStyle kBodyText =
    TextStyle(fontSize: 22, color: Colors.white, height: 1.5);

const Color kWhite = Colors.white;
const Color kBlue = Color(0xff5663ff);
Color bColor = HexColor("#9900FF");
Color gColor1 = HexColor("#D4D4FF");
Color gColor2 = HexColor("#9999FF");

Row getRow = Row(
  children: [
    Padding(
      padding: const EdgeInsets.all(10),
      child: CircleAvatar(
        child: ClipRect(
          child: Image.asset("assets/images/logo_quiz.png"),
        ),
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Change Password",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        Text(
          "Last changed 2 weeks ago",
          style: TextStyle(
            color: Colors.grey.shade700,
          ),
        )
      ],
    )
  ],
);

Row getRow1 = Row(
  children: [
    Padding(
      padding: const EdgeInsets.all(10),
      child: CircleAvatar(
        child: ClipRect(
          child: Image.asset("assets/images/logo_quiz.png"),
        ),
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Update Email Address",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        Text(
          "example@gmail.com",
          style: TextStyle(
            color: Colors.grey.shade700,
          ),
        )
      ],
    )
  ],
);
