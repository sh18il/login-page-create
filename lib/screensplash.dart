import 'package:flutter/material.dart';
import 'package:flutter_1stprijct/homeScreen.dart';

import 'package:flutter_1stprijct/login.dart';
import 'package:flutter_1stprijct/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    CheckUserLoggedIn();
    // TODO: implement initState
    super.initState();
 
  }

  @override
  void dispose() {
  
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 5));

    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (_) => LoginScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://i.pinimg.com/736x/b0/4c/93/b04c93b18ba6612ce698897849da7d28.jpg'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome ...... ',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> CheckUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();

    final _userLOggedIn = _sharedPrefs.getBool(SAVE_KEY);
    if (_userLOggedIn == null || _userLOggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => HomeScreen()));
    }
  }
}
