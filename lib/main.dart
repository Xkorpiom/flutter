import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _champs = ['Champs'];

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
            Column(
              children: _champs
                  .map((element) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/Sylas.jpg'),
                            Text(element)
                          ],
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
