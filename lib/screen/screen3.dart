import 'package:flutter/material.dart';
import 'package:flutter_application_5/screen/screen1.dart';
import 'package:flutter_application_5/screen/screen2.dart';
import 'package:flutter_application_5/screen/screen3.dart';

void main() => runApp(const screen3());

class screen3 extends StatelessWidget {
  const screen3({super.key});

  static const appTitle = 'Hamburguesa';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('images/hamburguesa.jpg'),
                  fit: BoxFit.cover)),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screen1()),
                );
              },
            ),
            ListTile(
              title: const Text('Pizza'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screen2()),
                );
              },
            ),
            ListTile(
              title: const Text('Hamburguesa'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screen3()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
