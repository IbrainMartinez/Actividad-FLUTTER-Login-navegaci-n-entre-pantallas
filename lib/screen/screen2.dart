import 'package:flutter/material.dart';
import 'package:flutter_application_5/screen/screen1.dart';
import 'package:flutter_application_5/screen/screen2.dart';
import 'package:flutter_application_5/screen/screen3.dart';

void main() => runApp(const screen2());

class screen2 extends StatefulWidget {
  const screen2({super.key});

  static const appTitle = 'Productos';

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: screen2.appTitle,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: screen2.appTitle),
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
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('images/pizza.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('images/hamburguesa.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('images/burrito.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
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
                  MaterialPageRoute(builder: (context) => const screen1()),
                );
              },
            ),
            ListTile(
              title: const Text('Productos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const screen2()),
                );
              },
            ),
            ListTile(
              title: const Text('Servicios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const screen3()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
