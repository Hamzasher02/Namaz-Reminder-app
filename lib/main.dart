import 'package:flutter/material.dart';
import 'package:namazremindarapp/View/SilentmodePage/SilentMoodScreen.dart';
import 'package:namazremindarapp/View/ReminderPage/remindersetting.dart';

import 'package:namazremindarapp/View/auth/login/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: LoginScreen());
  }
}
