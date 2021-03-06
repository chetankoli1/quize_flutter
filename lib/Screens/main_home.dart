import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_flutter/Config/const.dart';
import 'package:quiz_flutter/Widgets/appbars.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
              Colors.purple.shade200,
            ],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 9,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: HexColor('#D4D4FF'),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextButton(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Play Quiz',
                      style: GoogleFonts.montserrat(
                          color: bColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: bColor,
                    onSurface: Colors.yellow,
                    side: BorderSide(color: bColor, width: 2),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Play Demo',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: bColor,
                    onSurface: Colors.yellow,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 80.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        gColor1,
                        gColor2,
                      ],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: getRow1,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/updatemail");
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 80.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        gColor1,
                        gColor2,
                      ],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: getRow,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/changepass");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rules and Guidelines.",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "READ HERE",
                      style: GoogleFonts.montserrat(
                        color: Colors.purpleAccent.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/datailscreen");
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  handleClick(int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        break;
    }
  }
}
