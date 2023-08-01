import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeekCards extends StatelessWidget {
  const WeekCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          final DateTime currentDate =
              DateTime.now().add(Duration(days: index));
          final DateFormat dayFormat = DateFormat.E();
          final DateFormat dateFormat = DateFormat.d();

          return Container(
            width: 70,
            height: 90,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF407BE2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dateFormat.format(currentDate),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  dayFormat.format(currentDate),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
