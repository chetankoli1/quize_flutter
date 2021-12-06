import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter/Config/const.dart';
import 'package:quiz_flutter/Widgets/appbars.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommenAppBar(),
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
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Hero(
                    tag: 'User Avatar Image',
                    child: CircleAvatar(
                      foregroundColor: Colors.blue,
                      backgroundColor: profBack,
                      radius: 90.0,
                      child: ClipOval(
                        child: Image.network(
                          "https://www.seekpng.com/png/detail/34-344596_png-smart-vector-character-with-glasses-comes-ai.png",
                          fit: BoxFit.fill,
                          width: 175.0,
                          height: 175.0,
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.edit,
                  )
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Chetan koli",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 300.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                margin: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purpleAccent.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/mainscreen");
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text("UPDATE"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
