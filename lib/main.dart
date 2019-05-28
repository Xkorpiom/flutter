import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('League Of Legends'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Añadir Campeón'),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/Sylas.jpg'),
                  Text('Sylas'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
