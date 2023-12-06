import 'package:flutter/material.dart';
import 'package:flutter_1stprijct/chekFom.dart';
import 'package:flutter_1stprijct/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 30, 29, 29),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        leading: Icon(Icons.home),
        title: Center(child: Text('Travel....')),
        actions: [
          IconButton(
              onPressed: () {
                singnout(context);
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 98, 97, 91),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'MUNNAR',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'OTTY',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'KODAIKKANAL',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'BANGLORE',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'WAYANAD',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'MAHARASHTRA',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'DUBAI',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'MANALI',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChekFom()));
              },
              tileColor: Color.fromARGB(251, 40, 121, 175),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.fabhotels.com/blog/wp-content/uploads/2018/07/Meesapulimala.jpg'),
              ),
              title: Text(
                'IDUKKI',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text('tour packages'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Center(
            child: Text('THANK YOU ...'),
          ),
        ],
      ),
    );
  }

  singnout(BuildContext ctx) async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    await _sharedPrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => LoginScreen()), (route) => false);
  }
}
