import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Consts {
  static const String appname = "Flutter Quiz";
  static const String loading = "Loading...";
  static const String vText =
      "You will get a verification link in this email id.Verify your email to have it changed here.";

  static const String hRuleText =
      "Please read the text below carefully so you can understand it";

  static const String hRule1 =
      "Answer each question within the given time to continue.";

  static const String hRule2 = "Tap on options to select the correct answer.";

  static const String hRule3 =
      "Click submit if you are sure you want to submit the answer. ";

  static const String hRule4 =
      "Once submitted your answer cannot be changed even if there is time left.";
}

const TextStyle kBodyText =
    TextStyle(fontSize: 22, color: Colors.white, height: 1.5);

const Color kWhite = Colors.white;
const Color kBlue = Color(0xff5663ff);
Color bColor = HexColor("#9900FF");
Color gColor1 = HexColor("#D4D4FF");
Color gColor2 = HexColor("#9999FF");
Color profBack = HexColor("#F6E5E5");

Row getRow = Row(
  children: [
    const Padding(
      padding: EdgeInsets.all(10),
      child: CircleAvatar(
        child: Icon(CupertinoIcons.lock),
        backgroundColor: Colors.white,
        // child: ClipRect(
        //   child: Image.asset("assets/images/logo_quiz.png"),
        // ),
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Change Password",
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Last changed 2 weeks ago",
          style: GoogleFonts.montserrat(
            color: Colors.grey.shade700,
          ),
        )
      ],
    )
  ],
);

Row getRow1 = Row(
  children: [
    const Padding(
      padding: EdgeInsets.all(10),
      child: CircleAvatar(
        child: Icon(CupertinoIcons.mail),
        backgroundColor: Colors.white,
        // child: ClipRect(
        //   child: Image.asset("assets/images/logo_quiz.png"),
        // ),
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Update Email Address",
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "example@gmail.com",
          style: GoogleFonts.montserrat(
            color: Colors.grey.shade700,
          ),
        )
      ],
    )
  ],
);
