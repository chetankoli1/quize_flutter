import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisibleText = true;
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
              Form(
                child: Column(
                  children: [
                    const Text(
                      "Login To Super15",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green.shade500),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Mobile",
                            contentPadding: const EdgeInsets.all(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green.shade500),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Password",
                            suffixIcon: InkWell(
                              onTap: visiblilityMethoad,
                              child: isVisibleText
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            ),
                            contentPadding: const EdgeInsets.all(15),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isVisibleText,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: const Text("Forgot Password?"),
                            onTap: () {
                              Navigator.pushNamed(context, "/forgotemail");
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                          child: Center(child: Text("Login")),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't  have an Account?"),
                          InkWell(
                            child: Text(
                              " REGISTER",
                              style: TextStyle(
                                color: Colors.purpleAccent.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, "/register");
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void visiblilityMethoad() {
    if (isVisibleText == true) {
      isVisibleText = false;
    } else {
      isVisibleText = true;
    }
    setState(() {});
  }
}
