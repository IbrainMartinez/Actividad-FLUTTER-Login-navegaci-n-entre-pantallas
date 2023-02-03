import 'package:flutter/material.dart';
import 'package:flutter_application_5/screen/screen1.dart';
import 'package:flutter_application_5/screen/screen2.dart';
import 'package:flutter_application_5/screen/screen3.dart';

void main() => runApp(const screen3());

class screen3 extends StatelessWidget {
  const screen3({super.key});

  static const appTitle = 'Servicios';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(18.0),
              child: const Text("Nuestros Servicios",
                  style: TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.justify),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('images/restaurante.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: const [
                  Icon(Icons.home),
                  SizedBox(width: 16.0),
                  Text("Pedidos a Domicio",
                      style: TextStyle(fontSize: 15.0),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: const [
                  Icon(Icons.restaurant),
                  SizedBox(width: 16.0),
                  Text("Restaunte",
                      style: TextStyle(fontSize: 15.0),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: const [
                  Icon(Icons.table_restaurant),
                  SizedBox(width: 16.0),
                  Text("Reservar mesa",
                      style: TextStyle(fontSize: 15.0),
                      textAlign: TextAlign.center),
                ],
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
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://pixabay.com/get/gae366ce03dd59e4af6fefc832d9655a3e438eb49b51e547bbd3c55ef44e19c92ee4660e7daa8b89e6c10db588defe3f8a054957326d2a75431f6db41b77e56321a3a44e33f8e5c148f478cef971e5c58_1920.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text("Ibrain Martinez"),
                accountEmail: Text("ibrain120701@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pixabay.com/get/g93f0508dbb6b1e4546f841fa0e935dc57638072d33cf3c231d811ec919ac30a65be6c6340c69cd3a1f7444c0a53eb8683e4827eff028d5f2ca5231795863aab2a6767550238774d43b1a748dd55ecb26_1920.jpg"),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const screen1()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.emoji_objects),
              title: const Text('Productos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const screen2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.home_repair_service_sharp),
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
