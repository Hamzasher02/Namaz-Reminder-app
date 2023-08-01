import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class RemindersettingScreen extends StatelessWidget {
  const RemindersettingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      enableFeedback: true,
                      autofocus: true,
                      focusColor: Colors.blueAccent,
                      child: Container(
                        width: 30,
                        height: 30,
                        // ignore: sort_child_properties_last
                        child: SvgPicture.asset(
                          'assets/images/Vector.svg',
                          height: 8.59,
                          width: 15,
                        ),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              color:
                                  Colors.black.withOpacity(0.3799999952316284),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    Text(
                      'Reminder Setting',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8700000047683716),
                        fontSize: 16,
                        fontFamily: 'Futura Md BT',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.30,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  'Reminder Setting',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8700000047683716),
                    fontSize: 20,
                    fontFamily: 'Futura Md BT',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  'Set the Alarm to get Reminder before Prayer',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5699999928474426),
                    fontSize: 14,
                    fontFamily: 'Futura Bk BT',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ReminderTime(),
            ],
          ),
        ),
      ),
    );
  }
}

class ReminderTime extends StatelessWidget {
  ReminderTime({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500, // Adjust the height based on your needs
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5, // Number of cards you want to display
        itemBuilder: (context, index) {
          final DateTime currentDate =
              DateTime.now().add(Duration(days: index));
          final DateFormat dayFormat = DateFormat.E();

          return Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dayFormat.format(currentDate),
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.8700000047683716),
                          fontSize: 16,
                          fontFamily: 'Futura Md BT',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                      SizedBox(),
                      Text(
                        "Remind me Before",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.8700000047683716),
                          fontSize: 16,
                          fontFamily: 'Futura Md BT',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                      Container(
                        width: 35,
                        child: Text("25"),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: const Color.fromARGB(255, 255, 253, 253)
                                  .withOpacity(0.3799999952316284),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Mints",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.8700000047683716),
                          fontSize: 16,
                          fontFamily: 'Futura Md BT',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
