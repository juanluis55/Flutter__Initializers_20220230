import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Aprendiendo Flutter'),
    );
  }
}






class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('Hola Soy Juan Luis'),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.thumb_up,
                  size: 70.0,
                  color: Colors.black,
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Presionar'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Juan Luis Diaz Fermin'),
                subtitle: Text('Correo electrónico'),
              ),
            ),
            AppBar(
              title: Text('Buscar'),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Row(
              children: [
                Icon(Icons.star),
                Text('5 estrellas'),
              ],
            ),
            Stack(
              children: [
                Container(color: Color.fromARGB(255, 164, 19, 6)),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Text('Stacked Text'),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Presionar'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Color.fromARGB(255, 113, 61, 9),
              child: Center(child: Text('Contenedor Xd')),
            ),
            Row(
              children:[
                const Image(
                height: 100,width: 100,
                image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
           ],
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image(
                  image: AssetImage('images/Cr7.jpg'),
                  fit: BoxFit.cover,  // Ajusta la imagen al tamaño del contenedor
                ),
              ),
            ],
          ),
          MergeSemantics(
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                const Text('MargeSematic'),
              ],
            ),
          ),



          ],
        ),
      ),
    );
  }
}
