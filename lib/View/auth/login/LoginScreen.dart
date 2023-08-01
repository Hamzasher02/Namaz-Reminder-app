import 'package:flutter/material.dart';
import 'package:namazremindarapp/View/auth/Signup/signupscreen.dart';
import 'package:namazremindarapp/View/auth/forgetPasswordPage/forgetpassword.dart';
import 'package:namazremindarapp/Widget/UserNamefields.dart';
import 'package:namazremindarapp/Widget/roundbutton.dart';
import 'package:namazremindarapp/View/HomePage/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
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
                          "No have an account ?",
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
                                    builder: (context) => SignuppScreen(),
                                  ));
                            },
                            child: const Text(
                              "create New",
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
                height: 20,
              ),
              Positioned(
                top: screenHeight * 0.4,
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
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Color(0xFF407BE2),
                                  fontSize: 24,
                                  fontFamily: 'Bellota Text',
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
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
                        height: screenHeight * 0.05,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ForgetPasswordScreen(),
                                      ));
                                },
                                child: Text("Forget password"))
                          ],
                        ),
                      ),
                      RoundedButton(
                          text: "Login",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          })
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: screenHeight * 0.1,
                  child: Image.asset("assets/images/Vector.png"))
            ],
          ),
        ),
      ),
    );
  }
}
