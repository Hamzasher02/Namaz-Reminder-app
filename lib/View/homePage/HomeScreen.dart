import 'dart:async';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:namazremindarapp/View/drawerpage/Drawaver.dart';
import 'package:namazremindarapp/View/homePage/widget/daynamecards.dart';
import 'package:namazremindarapp/View/homePage/widget/weekscards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int minutesLeft = 14;
  int secondsLeft = 14 * 60;
  Timer? timer;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsLeft > 0) {
        setState(() {
          secondsLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  String formatTimeLeft(String mins) {
    int minutes = secondsLeft ~/ 60;
    return '${minutes.toString().padLeft(2, '0')} $mins ';
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        endDrawer: const Drwaverr(),
        body: StreamBuilder<Object>(
            stream: null,
            builder: (context, snapshot) {
              return Column(
                children: [
                  Stack(children: [
                    Image.asset(
                      'assets/images/Rectangle 2.png',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 250,
                      decoration: const BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: screenHeight * 0.05),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/profileimage.png",
                                  height: 40,
                                  width: 40,
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Salam,",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Nouman Imran",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    // Handle settings icon click
                                  },
                                  child: SvgPicture.asset(
                                    "assets/images/Setting.svg",
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                GestureDetector(
                                  onTap: () {
                                    // Handle notification icon click
                                  },
                                  child: SvgPicture.asset(
                                    "assets/images/Notification.svg",
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Next prayer:',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'Futura Md BT',
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.3,
                                      ),
                                    ),
                                    Text(
                                      'Asar (Hanafi)',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'Futura Md BT',
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.3,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  width: 123,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Time left',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        formatTimeLeft(" Mins"),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/alarm-clock.svg',
                                  width: 13,
                                  height: 13,
                                ),
                                Text(
                                  DateFormat.jm().format(DateTime.now()),
                                  style: const TextStyle(
                                    color: Color(0x91FFFFFF),
                                    fontFamily: 'Futura Md BT',
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.3,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SvgPicture.asset(
                                    'assets/images/map-marker.svg'),
                                const Text(
                                  ' Rawalpindi',
                                  style: TextStyle(
                                    color: Color(0xDEFFFFFF),
                                    fontFamily: 'Futura Md BT',
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   // width: double.infinity,
                          //   decoration: const BoxDecoration(color: Colors.white),
                          //   child: SingleChildScrollView(
                          //     child: const Column(
                          //       children: [
                          //         Padding(
                          //           padding: EdgeInsets.all(8.0),
                          //           child: Row(
                          //             children: [
                          //               Text(
                          //                 'Today’s Progress',
                          //                 style: TextStyle(
                          //                   color: Color(0xDD000000),
                          //                   fontFamily: 'Futura Md BT',
                          //                   fontSize: 16,
                          //                   fontStyle: FontStyle.normal,
                          //                   fontWeight: FontWeight.w400,
                          //                   letterSpacing: -0.3,
                          //                 ),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //         WeekCards(),
                          //         SizedBox(height: 10),
                          //         DaynameCards(),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ]),
                  const Expanded(
                    child: SingleChildScrollView(
                      clipBehavior: Clip.hardEdge,
                      reverse: false,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Today’s Progress',
                                  style: TextStyle(
                                    color: Color(0xDD000000),
                                    fontFamily: 'Futura Md BT',
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          WeekCards(),
                          SizedBox(height: 10),
                          DaynameCards(),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
