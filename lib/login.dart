import 'package:flutter/material.dart';
import 'package:flutter_1stprijct/homeScreen.dart';
import 'package:flutter_1stprijct/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  // bool _isDataMatched = true;

  final _fomkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Color.fromARGB(255, 164, 129, 173),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _fomkey,
            child: ListView(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                  height: 100,
                  child: Image.asset(
                    'images/user.png',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'username',
                    prefixIcon: Icon(
                      Icons.person_2,
                      color: Colors.black,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Value is Empty';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.black,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Value is Empty';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // CheckLogin(context);
                        if (_fomkey.currentState!.validate()) {
                          CheckLogin(context);
                        } else {
                          print('Data empty');
                        }
                      },
                      icon: Icon(
                        Icons.verified_user_rounded,
                      ),
                      label: Text(
                        'Login',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void CheckLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      showDialog(
          context: context,
          builder: (cont) {
            return AlertDialog(
              title: Text('Sucssfully'),
            );
          });

      print('User pass  match');

      final _sharedPrefs = await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(SAVE_KEY, true);

      Navigator.of(ctx).pushReplacement(MaterialPageRoute(
        builder: (ctx) => HomeScreen(),
      ));
      //goto home screen
    } else {
      print('User pass not match');

      //Alert dialog
      showDialog(
          context: ctx,
          builder: (ctx1) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('User passward doesnot match'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx1).pop();
                  },
                  child: Text('close'),
                )
              ],
            );
          });
    }
  }
}
