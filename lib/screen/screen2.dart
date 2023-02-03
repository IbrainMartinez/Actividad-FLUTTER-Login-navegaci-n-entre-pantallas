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
