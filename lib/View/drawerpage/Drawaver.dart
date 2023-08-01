import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:namazremindarapp/View/HomePage/HomeScreen.dart';
import 'package:namazremindarapp/View/SilentmodePage/SilentMoodScreen.dart';
import 'package:namazremindarapp/View/ReminderPage/remindersetting.dart';
import 'package:namazremindarapp/View/auth/Login/LoginScreen.dart';

class Drwaverr extends StatelessWidget {
  const Drwaverr({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        Image.asset(
          'assets/images/profileimage.png',
          height: 84,
          width: 84,
        ),
        Center(child: Text("Nomman Imran")),
        Card(
          child: ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
          ),
        ),
        ListTile(
          leading: SvgPicture.asset('assets/images/Volume-Off.svg'),
          title: const Text('Prayer silent mood'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SilentMoodScreen(),
                ));
          },
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Icon(Icons.alarm),
          title: const Text('Reminder Setting'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RemindersettingScreen(),
                ));
          },
        ),
        const SizedBox(
          height: 160,
        ),
        Center(
          child: ListTile(
            leading: Icon(Icons.logout_outlined),
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
          ),
        ),
      ]),
    );
  }
}
