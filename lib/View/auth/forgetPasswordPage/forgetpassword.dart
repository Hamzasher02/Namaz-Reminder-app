import 'package:flutter/material.dart';
import 'package:namazremindarapp/View/auth/VerificationPage/verificationOtp.dart';
import 'package:namazremindarapp/Widget/UserNamefields.dart';
import 'package:namazremindarapp/Widget/roundbutton.dart';
// import 'package:namazremindarapp/View/Authenticationpages/VerificationPage/verificationOtp.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

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
                          "Remember Password?",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextButton(
                            onPressed: () {},
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
                height: 20,
              ),
              Positioned(
                top: screenHeight * 0.4,
                bottom: screenHeight * 0.2,
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
                              "Forget Password",
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
                          icon: Icon(Icons.mail),
                          labelText: 'Email',
                          // hintText: "User Name",
                          controller: userNamecontroller,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),
                      RoundedButton(
                          text: "Send Code",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VerificationOtpScreen(),
                              ),
                            );
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
