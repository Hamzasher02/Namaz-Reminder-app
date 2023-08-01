import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class SilentMoodScreen extends StatelessWidget {
  const SilentMoodScreen({Key? key});

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
                      child: Container(
                        width: 30,
                        height: 30,
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
                      'Silent Mode',
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
                  'Prayer Silent Mode',
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
                  'Set the time to Auto Turn on Silent Mode During Prayer',
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
              CardendStarttime(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardendStarttime extends StatelessWidget {
  CardendStarttime({Key? key});

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
                height: 141,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            dayFormat.format(currentDate),
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.8700000047683716),
                              fontSize: 16,
                              fontFamily: 'Futura Md BT',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.30,
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 16,
                            child: Stack(
                              children: [
                                Container(
                                  width: 25,
                                  height: 16,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF407BE2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 2.40,
                                  child: Container(
                                    width: 11.20,
                                    height: 11.20,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Flexible(
                            fit: FlexFit.loose,
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Opacity(
                                  opacity: 0.89,
                                  child: Text(
                                    'End Time',
                                    style: TextStyle(
                                      color: Colors.black
                                          .withOpacity(0.5699999928474426),
                                      fontSize: 14,
                                      fontFamily: 'Futura Bk BT',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 90,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEBECF0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Opacity(
                                      opacity: 0.89,
                                      child: Text(
                                        '04:28',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.8700000047683716),
                                          fontSize: 14,
                                          fontFamily: 'Futura Md BT',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Opacity(
                                  opacity: 0.89,
                                  child: Text(
                                    'End Time',
                                    style: TextStyle(
                                      color: Colors.black
                                          .withOpacity(0.5699999928474426),
                                      fontSize: 14,
                                      fontFamily: 'Futura Bk BT',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 90,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEBECF0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Opacity(
                                      opacity: 0.89,
                                      child: Text(
                                        '04:28',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.8700000047683716),
                                          fontSize: 14,
                                          fontFamily: 'Futura Md BT',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
