import 'package:flutter/material.dart';

class ForgotPasswordScreenForMobile extends StatefulWidget {
  const ForgotPasswordScreenForMobile({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenForMobileState createState() =>
      _ForgotPasswordScreenForMobileState();
}

class _ForgotPasswordScreenForMobileState
    extends State<ForgotPasswordScreenForMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.purple.shade50,
              Colors.purple.shade200,
            ],
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo_quiz.png"),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Forgot Your Password?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: const EdgeInsets.only(left: 30),
                child: const Text(
                  "Reset Using Mobile",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green.shade500),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Mobile",
                      contentPadding: const EdgeInsets.all(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "You will get a OTP in this Mobile",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: const Text(
                      "Reset Using email",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/forgotemail");
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
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
                    Navigator.pushNamed(context, "/changepass");
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: Text("RESET PASSWORD")),
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
