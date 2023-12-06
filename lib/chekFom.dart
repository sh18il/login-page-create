import 'package:flutter/material.dart';
import 'package:flutter_1stprijct/homeScreen.dart';

class ChekFom extends StatelessWidget {
  const ChekFom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 50, 33, 33),
        title: Center(child: Text('.....')),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    (MaterialPageRoute(builder: (context) => HomeScreen())));
              },
              icon: Icon(Icons.blur_circular))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8='),
            Center(child: Text('TANK YOU ')),
          ],
        ),
      ),
    );
  }
}
