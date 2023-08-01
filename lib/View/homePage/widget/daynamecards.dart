import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DaynameCards extends StatelessWidget {
  const DaynameCards({Key? key}) : super(key: key);
  final bool value = true;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    final List<Color> cardColors = [
      const Color(0xFFFBB),
      const Color(0xFFFEDAA5),
      const Color(0xFF407BE2),
      const Color(0xFFA9FFDB),
      const Color(0xFFA9EAFF),
    ];

    return Column(
      children: [
        SizedBox(
          // height: 300,
          height: screenHeight * 0.43,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 7,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final DateTime currentDate =
                  DateTime.now().add(Duration(days: index));
              final DateFormat dayFormat = DateFormat.E();
              final DateTime datetime = DateTime.now();

              final Color cardColor = cardColors[index % cardColors.length];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: cardColor,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        width: 378,
                        height: 75,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                dayFormat.format(currentDate),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Text(
                                DateFormat('h:mm a').format(datetime),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              Checkbox(value: value, onChanged: (value) {})
                            ],
                          ),
                        )),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
