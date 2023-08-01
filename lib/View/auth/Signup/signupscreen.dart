import 'package:flutter/material.dart';
import 'package:namazremindarapp/Widget/UserNamefields.dart';
import 'package:namazremindarapp/Widget/roundbutton.dart';

import 'package:namazremindarapp/View/auth/login/LoginScreen.dart';

class SignuppScreen extends StatefulWidget {
  const SignuppScreen({super.key});

  @override
  State<SignuppScreen> createState() => _SignuppScreenState();
}

class _SignuppScreenState extends State<SignuppScreen> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
                height: screenHeight,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Text(
                        "Already  have an account ?",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          child: const Text(
                            "Login Now",
                            style: TextStyle(
                                fontSize: 20, color: Colors.lightBlue),
                          )),
                    )
                  ],
                )),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  colors: [
                    Color(0xFF4E54C8),
                    Color(0xFF8F94FB),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Image.asset(
                'assets/images/shad.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Positioned(
              top: screenHeight * 0.3,
              bottom: screenHeight * 0.1,
              left: 30,
              right: 30,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                color: Color(0xFF407BE2),
                                fontFamily: 'Bellota Text',
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 278,
                        height: 50,
                        constraints: const BoxConstraints(
                          minWidth: 278,
                          minHeight: 50,
                        ),
                        child: CustomTextField(
                          icon: Icon(Icons.person),
                          labelText: 'Username',
                          // hintText: "User Name",
                          controller: userNamecontroller,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        width: 278,
                        height: 50,
                        constraints: const BoxConstraints(
                          minWidth: 278,
                          minHeight: 50,
                        ),
                        child: CustomTextField(
                          icon: Icon(Icons.mail_outline),
                          labelText: "Email",
                          controller: passwordcontroller,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        width: 278,
                        height: 50,
                        constraints: const BoxConstraints(
                          minWidth: 278,
                          minHeight: 50,
                        ),
                        child: CustomTextField(
                          icon: Icon(Icons.lock_outline),
                          labelText: "Password",
                          controller: passwordcontroller,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        width: 278,
                        height: 50,
                        constraints: const BoxConstraints(
                          minWidth: 278,
                          minHeight: 50,
                        ),
                        child: CustomTextField(
                          icon: Icon(Icons.lock_outline),
                          labelText: "Conform Password",
                          controller: passwordcontroller,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      RoundedButton(text: "Create", onPressed: () {})
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.07,
              child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset("assets/images/Vector.png")),
            )
          ],
        ),
      ),
    );
  }
}
