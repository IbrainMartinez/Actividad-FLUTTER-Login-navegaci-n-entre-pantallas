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
