import 'package:flutter/material.dart';

import 'package:flutter_1stprijct/screensplash.dart';

const SAVE_KEY = 'UserLoggedIn';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 56, 58, 69)),
      home: SplashScreen(),
    );
  }
}
