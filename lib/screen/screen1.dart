import 'package:flutter/material.dart';
import 'package:flutter_application_5/screen/screen1.dart';
import 'package:flutter_application_5/screen/screen2.dart';
import 'package:flutter_application_5/screen/screen3.dart';

void main() => runApp(const screen1());

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const app(
        title: '',
      ),
    );
  }
}

class app extends StatelessWidget {
  const app({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'LLAMAR'),
        _buildButtonColumn(color, Icons.near_me, 'UBICACION'),
        _buildButtonColumn(color, Icons.share, 'COMPARTIR'),
      ],
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Este restaurante es un lugar ideal para aquellos que buscan una experiencia culinaria variada y deliciosa. Ofrece una amplia selección de comidas, desde pizzas tradicionales hasta tacos auténticos y hamburguesas con toques únicos. Los ingredientes son de alta calidad y la preparación es cuidadosa, lo que garantiza una experiencia gastronómica inolvidable para los comensales.  ',
        softWrap: true,
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Restaurante Los Mares',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Campeche, San Roman',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('100'),
        ],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: ListView(
          children: [
            Image.asset(
              'images/restaurante.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
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
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
